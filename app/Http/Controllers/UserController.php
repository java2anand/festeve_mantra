<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function add_event() {
        $page_data = DB::table('pages')->where('slug', 'add-event')->first();
        $page_title = isset($page_data->page_title) && !empty($page_data->page_title) ? $page_data->page_title : '';
        $meta_keyword = isset($page_data->meta_keyword) && !empty($page_data->meta_keyword) ? $page_data->meta_keyword : '';
        $meta_description = isset($page_data->meta_description) && !empty($page_data->meta_description) ? $page_data->meta_description : '';

        return view('add_event',compact('page_data','page_title','meta_keyword','meta_description'));
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
