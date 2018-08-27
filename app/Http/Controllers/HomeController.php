<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\Event;
use App\Model\Category;

class HomeController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        //$this->middleware('auth');
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

    public function event_list($slug) {
        $category = Category::where('slug', '=', $slug)->first();
        if ($category === null) {
           return redirect('/');
        }

        $arrevent = Event::where('event_category','=',$category->id)->paginate(1);

        return view('event_list',compact('arrevent'));
    }

    public function event_detail($slug) {
        $event = Event::where('slug', '=', $slug)->first();
        if ($event === null) {
           return redirect('/');
        }

        $speaker = DB::table('event_speakers')->where('event_id', $event->id)
                ->join('speakers as spkr', 'spkr.id', '=', 'event_speakers.speaker_id')
                ->select("spkr.id", "spkr.speaker_name", "spkr.image", "spkr.description",'spkr.title')->get();
        $organiser = $event->organiser;

        //query to find schedule
        $schedule_date = DB::table('event_schedules')->select('date')->where('event_id', $event->id)->where('status', 1)->groupBy('date')->get();
        if(count($schedule_date)>0){
            $arr_schedule = array();
            foreach($schedule_date as $date){

                $arr_schedule[$date->date] = DB::table('event_schedules')->where('event_id', $event->id)->where('status', 1)->where('date',$date->date)->get();
            }
        }

        //similar events
        $arr_similar_event = Event::where('event_category', '=', $event->event_category)->where('id', '!=', $event->id)->get();

        return view('event_detail',compact('event','speaker','organiser','arr_schedule','arr_similar_event'));
    }

    public function save_newsleter(Request $request){
        $email = $request->newsletter_email;
        echo $email;die;

        $newsletter = Newsletter::where('email',$email)->first();
        if($newsletter){
            $msg = 'Already subscribed.';
        }else{
            $save_news = new Newsletter;
            $save_news->email = $email;
            $save_news->save();

            $msg = 'Subscribed successfully.';
        }

        header('Content-Type: application/x-json; charset=utf-8');
        $result = json_encode(array('success'=>true,'msg'=>$msg));
        echo  $result;
        die;
    }

}
