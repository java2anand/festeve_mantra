<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\Event;
use App\Model\Category;
use App\Model\Newsletter;

class HomeController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        //$this->middleware('auth');
        $this->middleware('auth', ['except' => ['index','about_us','categories','event_list','event_detail','save_newsleter','top_hundred','search']]);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $arr_category = DB::table('categories')->where('parent_id', 0)->where('status', 1)->get();
        $arr_event = DB::table('events')->orderBy('id', 'desc')->limit(6)->get();
        $arr_story = DB::table('event_stories')->orderBy('id', 'desc')->limit(6)->get();

        return view('home', compact('arr_category','arr_event','arr_story'));
    }

    public function about_us() {
        return view('about');
    }


    public function categories(){
        $arr_category = Category::whereStatus(1)->get();
        dd($arr_category);
    }

    public function event_list($slug) {
        $category = Category::where('slug', '=', $slug)->first();
        if ($category === null) {
           return redirect('/');
        }
        $arr_category = Category::where('status','=',1)->where('parent_id','=',0)->get();

        $arrevent = Event::where('event_category','=',$category->id)->paginate(20);
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
        $arr_events = Event::whereStatus(1)->orderBy('sort_order', 'asc')->get();
        dd($arr_events);
    }


    public function add_event(){
        echo 'add event';
    }


    public function search(Request $request){

    }

}
