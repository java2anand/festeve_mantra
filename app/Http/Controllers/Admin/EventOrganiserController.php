<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\EventOrganiserRequest;
use App\Model\EventOrganiser;
use Illuminate\Support\Facades\DB;

class EventOrganiserController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index() {
        $page = 'organiser_list';
        $arrEventOrganiser = EventOrganiser::orderBy('id', 'DESC')->paginate(10);
        return view('admin.eventorganiser_list', compact('arrEventOrganiser', 'page'));
    }

    public function create($id = false) {
        $page = 'add_organiser';
        $eventorganiser = array();
        if ($id) {
            $eventorganiser = DB::table('event_organisers')->where('id', $id)->first();
            if ($eventorganiser == null) {
                return redirect()->route('admin.eventorganiser_list');
            }
        }
        return view('admin.eventorganiser_add', compact('eventorganiser', 'page'));
    }

    public function save_organiser(EventOrganiserRequest $request, $id = false) {


        $eventorganiser = new EventOrganiser;
        if ($id) {
            $eventorganiser = EventOrganiser::find($id);
        }

        $eventorganiser->organiser_title = $request->organiser_title;
        $eventorganiser->name = (!empty($request->name)) ? $request->name : '';
        $eventorganiser->description = (!empty($request->description)) ? $request->description : '';
        $eventorganiser->facebook_id = (!empty($request->facebook_id)) ? $request->facebook_id : '';
        $eventorganiser->twitter_id = (!empty($request->twitter_id)) ? $request->twitter_id : '';
        $eventorganiser->linked_id = (!empty($request->linked_id)) ? $request->linked_id : '';
        $eventorganiser->instagram_id = (!empty($request->instagram_id)) ? $request->instagram_id : '';
        $eventorganiser->googleplus_id = (!empty($request->googleplus_id)) ? $request->googleplus_id : '';
        $eventorganiser->status = $request->status;
        $eventorganiser->save();
        return redirect()->route('admin.eventorganiser_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $eventorganiser = EventOrganiser::find($id);
        $eventorganiser->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

}
