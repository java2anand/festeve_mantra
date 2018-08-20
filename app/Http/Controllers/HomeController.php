<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$arrCategory = DB::table('event_categories')->where('parent_id',0)->where('status',1)->get();
		return view('home',compact('arrCategory'));
    }
	public function about_us()
    {
        return view('about');
    }
	public function event_list($slug="")
    {
        return view('event_list');
    }
	public function event_detail($slug="")
    {
        return view('event_detail');
    }
}
