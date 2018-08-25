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
        $arr_event = DB::table('events')->get();
        return view('home', compact('arr_category','arr_event'));
    }

    public function about_us() {
        return view('about');
    }

    public function event_list($slug) {
        $category = Category::where('slug', '=', $slug)->first();
        if ($category === null) {
           return redirect('/');
        }

        $arrevent = Event::where('event_category','=',$category->id)->get();
        return view('event_list',compact('arrevent'));
    }

    public function event_detail($slug) {
        $event = Event::where('slug', '=', $slug)->first();
        if ($event === null) {
           return redirect('/');
        }

        $schedule = DB::table('event_schedules')->where('event_id', $event->id)->where('status', 1)->get();

        $speaker = DB::table('event_speakers')->where('event_id', $event->id)
                ->join('speakers as spkr', 'spkr.id', '=', 'event_speakers.speaker_id')
                ->select("spkr.id", "spkr.speaker_name", "spkr.image", "spkr.description",'spkr.title')->get();
        $organiser = $event->organiser;

        return view('event_detail',compact('event','schedule','speaker','organiser'));
    }

}
