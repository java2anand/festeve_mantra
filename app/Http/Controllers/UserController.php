<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\Event;
use App\Model\Story;
use App\Model\EventFavourite;
use Auth;

class UserController extends Controller {
    public function __construct() {
        $this->middleware('auth');
        //$this->middleware('auth', ['except' => ['index','about_us','categories','event_list','event_detail','save_newsleter','top_hundred','search','stories']]);
        //Common::test();//external class testing
        //test();//external helper testing
    }

    public function dashboard(Request $request) {
        $user_data = Auth::user();
        //dd($request);
        /*if(isset($request->input('submit'))){
            echo 'Is set';die;
        }*/
        return view('dashboard', compact('user_data'));
    }

    public function my_events(){
        $user_id = Auth::user()->id;
        $arr_events = Event::where('added_by','U')->where('added_by_id',$user_id)->paginate(9);
        return view('my_events', compact('arr_events'));
    }

    public function my_stories(){
        $user_id = Auth::user()->id;
        $arr_story = Story::where('added_by','U')->where('added_by_id',$user_id)->get();
        return view('my_stories', compact('arr_story'));
    }

    public function favourite_events(){
        $user_id = Auth::user()->id;
        $favorites = EventFavourite::where('user_id', $user_id)->paginate(9);
        return view('favourite_events',compact('favorites'));
    }

    public function add_event() {
        $page_data = DB::table('pages')->where('slug', 'add-event')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('add_event', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function add_story() {
        $page_data = DB::table('pages')->where('slug', 'add-story')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('add_story', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function get_reminder() {
        echo 'get reminder';
    }

    public function add_advertise() {
        $page_data = DB::table('pages')->where('slug', 'add-advertise')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('add_advertise', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function apply_job() {
        $page_data = DB::table('pages')->where('slug', 'apply-job')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('apply_job', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function organizers() {
        $page_data = DB::table('pages')->where('slug', 'organizers')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('organizers', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

}
