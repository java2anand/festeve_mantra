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

        $arr_category = DB::table('categories')->where('parent_id', 0)->where('status', 1)->orderBy('sort_order','asc')->get();

        $arr_event = DB::table('events')->orderBy('id', 'desc')->limit(6)->get();
        $arr_story = DB::table('event_stories')->orderBy('id', 'desc')->limit(6)->get();

        return view('home', compact('arr_category','arr_event','arr_story'));
    }

    public function categories(){
        $arr_category = Category::whereStatus(1)->get();
        $popular_category = Category::whereStatus(1)->limit(5)->get();
        return view('category_list', compact('arr_category','popular_category'));
    }

    public function stories(){
        $arr_story = Story::whereStatus(1)->get();
        return view('story_list', compact('arr_story'));
    }

    public function event_list($slug,Request $request) {
        $category = Category::where('slug', '=', $slug)->first();
        if ($category === null) {
           return redirect('/');
        }

        $arr_category = Category::where('status','=',1)->where('parent_id','=',0)->get();
        $event_date = $request->event_date;
        //enable_query();
        $arrevent = Event::where('event_category','=',$category->id)
            ->when($event_date, function ($query) use ($event_date) {
                switch ($event_date) {
                    case 'today':
                        $today = date('Y-m-d');
                        return $query->where('events.start_date', $today);
                        break;
                    case 'this-week':
                        $today = date('Y-m-d');
                        $week_last_day = date('Y-m-d',strtotime('+7 days'));
                        return $query->where('events.start_date','>=', $today)->where('events.start_date','<=', $week_last_day);
                        break;
                    case 'next-week':
                        $next_first_day = date('Y-m-d',strtotime('+7 days'));
                        $next_week_last_day = date('Y-m-d',strtotime('+14 days'));
                        return $query->where('events.start_date','>=', $next_first_day)->where('events.start_date','<=', $next_week_last_day);
                        break;
                    case 'next-month':
                        $month_first_day = date('Y-m-d',strtotime('first day of +1 month'));
                        $month_last_day = date('Y-m-d',strtotime('last day of +1 month'));
                        return $query->where('events.start_date','>=', $month_first_day)->where('events.start_date','<=', $month_last_day);
                        break;
                    case 'custom':
                        echo "custom";
                        break;
                }
            })->paginate(10);
            //print_query();
            //dd($arrevent);
        return view('event_list',compact('arrevent','arr_category','category'));
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
            ->select("spkr.id", "spkr.speaker_name", "spkr.image", "spkr.description",'spkr.title')->get();

        //event organiser
        $organiser = $event->organiser;

        //query to find schedule
        $schedule_date = DB::table('event_schedules')->select('date')->where('event_id', $event->id)->where('status', 1)->groupBy('date')->get();
        if(count($schedule_date)>0){
            foreach($schedule_date as $date){
                $arr_schedule[$date->date] = DB::table('event_schedules')->where('event_id', $event->id)->where('status', 1)->where('date',$date->date)->get();
            }
        }

        //similar events
        $arr_similar_event = Event::where('event_category', '=', $event->event_category)->where('id', '!=', $event->id)->get();

        return view('event_detail',compact('event','speaker','organiser','arr_schedule','arr_similar_event'));


    }

    public function save_newsleter(Request $request){
        $email = $request->email;

        $newsletter = Newsletter::where('email',$email)->first();
        if($newsletter){
            $msg = '<span class="text-danger">Already subscribed.</span>';
        }else{
            $save_news = new Newsletter;
            $save_news->email = $email;
            $save_news->save();

            $msg = '<span class="text-success">Subscribed successfully.</span>';
        }

        header('Content-Type: application/x-json; charset=utf-8');
        $result = json_encode(array('success'=>true,'msg'=>$msg));
        echo  $result;
        die;
    }

    public function top_hundred(){
        $arr_events = Event::whereStatus(1)->orderBy('sort_order', 'asc')->select('id','title','slug')->get();
        dd($arr_events);
    }

    public function add_event(){
        echo 'add event';
    }

    public function search(Request $request){
        $event_name = $request->event_name;
        $event_date = $request->event_date;
        $event_location = $request->event_location;


        $arrevent = Event::orderBy('id', 'DESC')
            ->when($event_name, function ($query) use ($event_name) {
                return $query->where('events.title', 'like', '%' . $event_name . '%');
            })->paginate(10);

        $arr_category = Category::where('status','=',1)->where('parent_id','=',0)->get();

        return view('search',compact('arrevent','arr_category'));
    }

    public function get_reminder(){
        echo 'get reminder';
    }


    public function about_us() {
        return view('about');
    }

    public function our_team() {
        return view('our_team');
    }

    public function careers() {
        return view('careers');
    }

    public function terms_conditions() {
        return view('terms_conditions');
    }

    public function privacy_policy() {
        return view('privacy_policy');
    }

    public function contact_us() {
        return view('contact_us');
    }
}
