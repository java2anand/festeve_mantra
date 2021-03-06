<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\Event;
use App\Model\Category;
use App\Model\Story;
use App\Model\Newsletter;
use App\Model\Query;

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
        $arr_category = DB::table('categories')->where('status', 1)->where('popular', 1)->orderBy('sort_order', 'asc')->limit(6)->get();

        $arr_event = Event::orderBy('start_date', 'asc')->where('status', 1)->where('home_event', 1)->where('end_date', '>=', date('Y-m-d'))->limit(9)->get();

        $popular_event = Event::orderBy('start_date', 'asc')->where('status', 1)->where('popular', 1)->where('end_date', '>=', date('Y-m-d'))->limit(15)->get();

        $arr_story = Story::orderBy('id', 'desc')->where('status', 1)->limit(6)->get();

        //static category in home page
        $arr_top_cat = DB::table('categories')->select('mini_icon', 'image', 'slug')->whereIn('id', array(1, 2, 3, 4, 5, 6, 7))->get();

        //seo data
        $page_data = DB::table('pages')->where('id', 1)->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';
        return view('home', compact('arr_category', 'arr_event', 'arr_story', 'arr_top_cat', 'page_title', 'meta_keyword', 'meta_description','popular_event'));
    }

    public function categories() {
        $arr_category = Category::whereStatus(1)->get();
        $popular_category = Category::whereStatus(1)->where('popular', 1)->limit(5)->get();

        //get events by user current location

        $lat_long = session()->get('current_location');
        $lat = $lat_long['latitude'];
        $long = $lat_long['longitude'];

        /*$url = 'https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyDjvjVSrDJA2dCpKqYaf4keThmElDGRSCg&latlng='.$lat.','.$long.'&sensor=false';
        $ch = curl_init();
        curl_setopt ($ch, CURLOPT_URL, $url);
        curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt ($ch, CURLOPT_RETURNTRANSFER, true);
        $contents = curl_exec($ch);*/

        //get near by events
        $current_city = '';
        $arr_near = array();
        if(!empty($lat) && !empty($long)){
            $geocode=file_get_contents('https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyDjvjVSrDJA2dCpKqYaf4keThmElDGRSCg&latlng='.$lat.','.$long.'&sensor=true');
            $output= json_decode($geocode);
            $current_city = $output->results[7]->formatted_address;

            $arr_near = DB::table('event_addresses')
                ->select(DB::raw('events.title,events.slug,events.event_image,events.start_date,events.end_date,event_id, ( 6367 * acos( cos( radians('.$lat.') ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians('.$long.') ) + sin( radians('.$lat.') ) * sin( radians( latitude ) ) ) ) AS distance'))
                ->join('events', 'events.id', '=', 'event_addresses.event_id')
                ->where('events.end_date', '>=', date('Y-m-d'))->where('events.status',1)
                ->having('distance', '<', 100)->orderBy('distance')->limit(25)->get();
        }

        $page_data = DB::table('pages')->where('slug', 'categories')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';
        return view('category_list', compact('arr_category', 'popular_category', 'page_title', 'meta_keyword', 'meta_description','current_city','arr_near'));
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
            })->where('end_date', '>=', date('Y-m-d'))->where('status', 1)->orderBy('start_date', 'asc')->paginate(10)->withPath('?event_date=' . $event_date);
        //print_query();

        $page_title = $category->page_title;
        $meta_keyword = $category->meta_keyword;
        $meta_description = $category->meta_description;

        /*         * ****** advertisement ************** */
        $arr_top_ad = DB::table('advertisements')->where('ad_type', 1)->where('ad_location', 'category')->where('status', 1)->whereRaw('FIND_IN_SET(?,category)', [$category->id])->orderBy('updated_at', 'desc')->first();

        $arr_right_ad = DB::table('advertisements')->where('ad_type', 2)->where('ad_location', 'category')->where('status', 1)->whereRaw('FIND_IN_SET(?,category)', [$category->id])->get();

        return view('event_list', compact('arrevent', 'arr_category', 'category', 'meta_keyword', 'meta_description', 'page_title', 'arr_top_ad', 'arr_right_ad'));
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

        //event gallery
        $gallery = $event->gallery;

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
        $arr_similar_event = Event::where('event_category', '=', $event->event_category)->where('id', '!=', $event->id)->where('end_date', '>=', date('Y-m-d'))->where('status',1)->limit(15)->get();

        //event primary address
        $primar_address = DB::table('event_addresses')->where('event_id', $event->id)->where('primary_address', 1)->first();

        $meta_keyword = !empty($event->seo->meta_keyword) ? $event->seo->meta_keyword : '';
        $meta_description = !empty($event->seo->meta_description) ? $event->seo->meta_description : '';
        $page_title = !empty($event->seo->page_title) ? $event->seo->page_title : '';

        //near by events by events primary address
        $arr_near = array();
        if(!empty($primar_address->latitude) && !empty($primar_address->longitude)){
            $arr_near = DB::table('event_addresses')
                ->select(DB::raw('events.title,events.slug,event_id, ( 6367 * acos( cos( radians('.$primar_address->latitude.') ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians('.$primar_address->longitude.') ) + sin( radians('.$primar_address->latitude.') ) * sin( radians( latitude ) ) ) ) AS distance'))
                ->join('events', 'events.id', '=', 'event_addresses.event_id')
                ->where('events.end_date', '>=', date('Y-m-d'))->where('events.status',1)
                ->where('events.slug','!=',$slug)
                ->having('distance', '<', 100)->orderBy('distance')->limit(25)->get();
        }
        /*         * ****** advertisement ************** */
        $arr_ad = DB::table('advertisements')->where('status', 1)->whereRaw('FIND_IN_SET(?,event)', [$event->id])->get();
        return view('event_detail', compact('event', 'speaker', 'organiser', 'arr_schedule', 'arr_similar_event', 'meta_keyword', 'meta_description', 'page_title', 'primar_address', 'arr_ad','arr_near','gallery'));
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

    public function save_enquiry(Request $request) {

        $query = new Query;
        $query->title_id = $request->contact_title;
        $query->name = $request->contact_name;
        $query->city = $request->contact_city;
        $query->company_name = !empty($request->contact_company) ?: '';
        $query->email = $request->contact_email;
        $query->mobile = $request->contact_phone;
        $query->message = $request->contact_message;
        $query->save();

        $msg = '<span class="text-success">Our team will contact you soon!.</span>';
        header('Content-Type: application/x-json; charset=utf-8');
        $result = json_encode(array('success' => true, 'msg' => $msg));
        echo $result;
        die;
    }

    public function top_hundred(Request $request) {
        $arr_events = Event::whereStatus(1)->orderBy('sort_order', 'asc')->where('end_date', '>=', date('Y-m-d'))->where('top_hundred', 1)->paginate(12);
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

    public function search(Request $request) {
        $event_name     = $request->keyword;
        $event_date     = $request->date;
        $event_location = $request->location;
        $event_cat      = $request->cat;

        $arrevent = Event::orderBy('start_date', 'ASC')
            ->when($event_name, function ($query) use ($event_name) {
                return $query->where('events.title', 'like', '%' . $event_name . '%');
            })->when($event_cat, function ($query) use ($event_cat) {
                return $query->where('events.event_category', $event_cat);
            })->when($event_date, function ($query) use ($event_date) {
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
            })->where('end_date', '>=', date('Y-m-d'))->paginate(10)->withPath('?keyword=' . $event_name . '&date=' . $event_date . '&location=' . $event_location . '&cat=' . $event_cat);

        $arr_category = Category::where('status', '=', 1)->where('parent_id', '=', 0)->get();
        /*         * ****** advertisement ************** */
        $arr_right_ad = DB::table('advertisements')->where('ad_type', 2)->where('ad_location', 'category')->where('status', 1)->get();

        return view('search', compact('arrevent', 'arr_category', 'arr_right_ad'));
    }

    public function fetch_result(Request $request) {
        $keyword = $request['query'];
        $search_keyword = addslashes($keyword);
        $results = array();
        $counter = 0;
        $results_array = array();
        $data_array = array();

        $event_array = Event::select('title', 'slug')->where('end_date', '>=', date('Y-m-d'))->where('status', 1)->where('title', 'like', '%' . $search_keyword . '%')->limit(10)->get();

        $category_array = Category::select('category_name', 'slug')->where('status',1)->where('category_name', 'like', '%' . $search_keyword . '%')->limit(10)->get();


        if (count($category_array) > 0) {
            $results_array[] = "<span class='btitles'>In Category</span>";
            $data_array[] = "";
            $counter++;
            foreach ($category_array as $row) {
                $results_array[$counter] = "<span style='padding:10px!important;font-size:11px;float:left'>" . $row->category_name . "</span>";
                $data_array[$counter] = "category-" . $row->slug;
                $counter++;
            }
        }

        if (count($event_array) > 0) {
            $results_array[] = "<span class='btitles'>In Event</span>";
            $data_array[] = "";
            $counter++;
            foreach ($event_array as $event) {
                $results_array[] = "<span style='padding:10px;display:inline-block'>" . $event->title . "</span>";
                $data_array[] = $event->slug;
            }
        }

        $results['suggestions'] = $results_array;
        $results['data'] = $data_array;
        $results['query'] = $keyword;
        echo @json_encode($results);
    }

    public function set_current_location(Request $request){
        $session_array['latitude'] = $request->latitude;
        $session_array['longitude'] = $request->longitude;
        session()->put('current_location', $session_array);
        //print_r(session()->get('current_location'));
    }

}
