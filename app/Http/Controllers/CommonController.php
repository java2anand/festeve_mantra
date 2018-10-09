<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\Employee;
use App\Model\Job;

class CommonController extends Controller
{
    public function about_us() {
        $page_data = DB::table('pages')->where('slug', 'about-us')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('about', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }

    public function our_team() {
        $arr_ceo = Employee::whereStatus(1)->whereType('owner')->get();
        $arr_emp = Employee::whereStatus(1)->whereType('emp')->get();

        $page_data = DB::table('pages')->where('slug', 'our-team')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('our_team', compact('page_data', 'page_title', 'meta_keyword', 'meta_description','arr_ceo','arr_emp'));
    }

    public function careers() {

        $arr_openings = Job::whereStatus(1)->get();
        $page_data = DB::table('pages')->where('slug', 'careers')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('careers', compact('page_data', 'page_title', 'meta_keyword', 'meta_description','arr_openings'));
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

    public function coming_soon() {
        $page_data = DB::table('pages')->where('slug', 'coming-soon')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('coming_soon', compact('page_data', 'page_title', 'meta_keyword', 'meta_description'));
    }
}
