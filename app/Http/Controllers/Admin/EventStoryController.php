<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\EventStory;
use Illuminate\Support\Facades\DB;
use Image;

class EventStoryController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }
	public function index() {
        $page = 'event_story_list';
        $arrEventSpeaker = EventStory::orderBy('id', 'DESC')->paginate(10);
        return view('admin.eventstory_list', compact('arrEventStory','page'));
    }
?>	