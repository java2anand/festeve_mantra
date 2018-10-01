<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\Event;
use App\Model\Category;
use App\Model\Story;
use App\Model\Newsletter;

//use App\Classes\Common;

class HomeController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        //$this->middleware('auth');
        //$this->middleware('auth', ['except' => ['index','about_us','categories','event_list','event_detail','save_newsleter','top_hundred','search','stories']]);
        //Common::test();//external class testing
        //test();//external helper testing
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $arr_category = DB::table('categories')->where('status', 1)->orderBy('sort_order', 'asc')->limit(7)->get();

        $arr_event = Event::orderBy('id', 'desc')->where('status', 1)->where('end_date', '>=', date('Y-m-d'))->limit(9)->get();
        $arr_story = DB::table('stories')->orderBy('id', 'desc')->where('status', 1)->limit(6)->get();

        //static category in home page
        $arr_top_cat = DB::table('categories')->select('mini_icon', 'image', 'slug')->whereIn('id', array(1, 2, 3, 4, 5, 6, 7))->get();


        //seo data
        $page_data = DB::table('pages')->where('id', 1)->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';
        return view('home', compact('arr_category', 'arr_event', 'arr_story', 'arr_top_cat', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function categories() {
        $arr_category = Category::whereStatus(1)->get();
        $popular_category = Category::whereStatus(1)->limit(5)->get();

        $page_data = DB::table('pages')->where('slug', 'categories')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';
        return view('category_list', compact('arr_category', 'popular_category', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function event_list($slug, Request $request) {
        $category = Category::where('slug', '=', $slug)->first();
        if ($category === null) {
            return redirect('/');
        }
        $arr_category = Category::where('status', '=', 1)->where('parent_id', '=', 0)->get();
        $event_date = $request->event_date;
        //enable_query();
        $arrevent = Event::where('event_category', '=', $category->id)
                        ->when($event_date, function ($query) use ($event_date) {
                            switch ($event_date) {
                                case 'today':
                                    $today = date('Y-m-d');
                                    return $query->where('events.start_date', $today);
                                    break;
                                case 'this-week':
                                    $today = date('Y-m-d');
                                    $week_last_day = date('Y-m-d', strtotime('+7 days'));
                                    return $query->where('events.start_date', '>=', $today)->where('events.start_date', '<=', $week_last_day);
                                    break;
                                case 'next-week':
                                    $next_first_day = date('Y-m-d', strtotime('+7 days'));
                                    $next_week_last_day = date('Y-m-d', strtotime('+14 days'));
                                    return $query->where('events.start_date', '>=', $next_first_day)->where('events.start_date', '<=', $next_week_last_day);
                                    break;
                                case 'next-month':
                                    $month_first_day = date('Y-m-d', strtotime('first day of +1 month'));
                                    $month_last_day = date('Y-m-d', strtotime('last day of +1 month'));
                                    return $query->where('events.start_date', '>=', $month_first_day)->where('events.start_date', '<=', $month_last_day);
                                    break;
                                case 'custom':
                                    echo "custom";
                                    break;
                            }
                        })->where('end_date', '>=', date('Y-m-d'))->paginate(10)->withPath('?event_date=' . $event_date);
        //print_query();

        $page_title = $category->page_title;
        $meta_keyword = $category->meta_keyword;
        $meta_description = $category->meta_description;

        /*         * ****** advertisement ************** */
        $arr_top_ad = DB::table('advertisements')->where('ad_type',1)->where('ad_location','category')->where('status',1)->whereRaw('FIND_IN_SET(?,category)', [$category->id])->orderBy('updated_at','desc')->first();

        $arr_right_ad = DB::table('advertisements')->where('ad_type',2)->where('ad_location','category')->where('status',1)->whereRaw('FIND_IN_SET(?,category)', [$category->id])->get();

        return view('event_list', compact('arrevent', 'arr_category', 'category', 'meta_keyword', 'meta_description', 'page_title','arr_top_ad','arr_right_ad'));
    }

    public function event_detail($slug) {
        $arr_schedule = array();
        $event = Event::where('slug', '=', $slug)->first();

        if ($event === null) {
            return redirect('/');
        }

        //increment event view
        DB::table('events')->whereId($event->id)->increment('total_view');

        //event speaker
        $speaker = DB::table('event_speakers')->where('event_id', $event->id)
                        ->join('speakers as spkr', 'spkr.id', '=', 'event_speakers.speaker_id')
                        ->select("spkr.id", "spkr.speaker_name", "spkr.image", "spkr.description", 'spkr.title')->get();

        //event organiser
        $organiser = $event->organiser;

        //query to find schedule
        $schedule_date = DB::table('event_schedules')->select('date')->where('event_id', $event->id)->where('status', 1)->groupBy('date')->get();
        if (count($schedule_date) > 0) {
            foreach ($schedule_date as $date) {
                $arr_schedule[$date->date] = DB::table('event_schedules')->where('event_id', $event->id)->where('status', 1)->where('date', $date->date)->get();
            }
        }

        //similar events
        $arr_similar_event = Event::where('event_category', '=', $event->event_category)->where('id', '!=', $event->id)->where('end_date', '>=', date('Y-m-d'))->limit(15)->get();

        //event primary address
        $primar_address = DB::table('event_addresses')->where('event_id', $event->id)->where('primary_address', 1)->first();

        $meta_keyword = !empty($event->seo->meta_keyword) ? $event->seo->meta_keyword : '';
        $meta_description = !empty($event->seo->meta_description) ? $event->seo->meta_description : '';
        $page_title = !empty($event->seo->page_title) ? $event->seo->page_title : '';

        /*         * ****** advertisement ************** */
        $arr_ad = DB::table('advertisements')->where('status',1)->whereRaw('FIND_IN_SET(?,event)', [$event->id])->get();
        return view('event_detail', compact('event', 'speaker', 'organiser', 'arr_schedule', 'arr_similar_event', 'meta_keyword', 'meta_description', 'page_title', 'primar_address','arr_ad'));
    }

    public function stories() {
        $arr_story = Story::whereStatus(1)->paginate(10);
        $arr_category = Category::whereStatus(1)->get();

        $page_data = DB::table('pages')->where('slug', 'stories')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';
        return view('story_list', compact('arr_story', 'arr_category', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function story_detail($slug) {
        $story = Story::where('slug', '=', $slug)->first();
        if ($story === null) {
            return redirect('/');
        }

        $meta_keyword = !empty($story->meta_keyword) ? $story->meta_keyword : '';
        $meta_description = !empty($story->meta_description) ? $story->meta_description : '';
        $page_title = !empty($story->page_title) ? $story->page_title : '';
        //recent top 5 stories
        $arr_story = Story::whereStatus(1)->where('id', '!=', $story->id)->orderBy('id', 'desc')->limit(5)->get();
        return view('story_detail', compact('story', 'arr_story', 'meta_keyword', 'meta_description', 'page_title'));
    }

    public function save_newsleter(Request $request) {
        $email = $request->email;

        $newsletter = Newsletter::where('email', $email)->first();
        if ($newsletter) {
            $msg = '<span class="text-danger">Already subscribed.</span>';
        } else {
            $save_news = new Newsletter;
            $save_news->email = $email;
            $save_news->save();

            $msg = '<span class="text-success">Subscribed successfully.</span>';
        }

        header('Content-Type: application/x-json; charset=utf-8');
        $result = json_encode(array('success' => true, 'msg' => $msg));
        echo $result;
        die;
    }

    public function top_hundred(Request $request) {
        $arr_events = Event::whereStatus(1)->orderBy('sort_order', 'asc')->select('id', 'title', 'slug', 'event_image', 'short_description', 'start_date')->where('end_date', '>=', date('Y-m-d'))->paginate(10);
        if ($request->ajax()) {
            $view = '';
            if (count($arr_events) > 0) {
                $view = view('top_hundred_ajax', compact('arr_events'))->render();
            }
            return response()->json(['html' => $view]);
        }


        $page_data = DB::table('pages')->where('slug', 'top-hundred')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';
        return view('top_hundred', compact('arr_events', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function add_event() {

        $page_data = DB::table('pages')->where('slug', 'add_event')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        //return view('about',compact('page_data','page_title','meta_keyword','meta_description'));
    }

    public function search(Request $request) {
        $event_name = $request->event_name;
        $event_date = $request->event_date;
        $event_location = $request->event_location;
        $event_cat = isset($request->event_cat) ? $request->event_cat : '';

        $arrevent = Event::orderBy('id', 'DESC')
                        ->when($event_name, function ($query) use ($event_name) {
                            return $query->where('events.title', 'like', '%' . $event_name . '%');
                        })->where('end_date', '>=', date('Y-m-d'))->paginate(10)->withPath('?event_name=' . $event_name . '&event_date=' . $event_date . '&event_location=' . $event_location . '&event_cat=' . $event_cat);

        $arr_category = Category::where('status', '=', 1)->where('parent_id', '=', 0)->get();

        return view('search', compact('arrevent', 'arr_category'));
    }

    public function get_reminder() {
        echo 'get reminder';
    }

    public function about_us() {
        $page_data = DB::table('pages')->where('slug', 'about-us')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('about', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function our_team() {
        $page_data = DB::table('pages')->where('slug', 'our-team')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('our_team', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function careers() {
        $page_data = DB::table('pages')->where('slug', 'careers')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('careers', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function terms_conditions() {
        $page_data = DB::table('pages')->where('slug', 'terms-conditions')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('terms_conditions', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function privacy_policy() {
        $page_data = DB::table('pages')->where('slug', 'privacy-policy')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('privacy_policy', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function contact_us() {
        $page_data = DB::table('pages')->where('slug', 'contact-us')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('contact_us', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

}
