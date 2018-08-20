<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\EventTypeRequest;
use App\Http\Controllers\Controller;
use App\Model\EventType;
use Illuminate\Support\Facades\DB;

class EventTypeController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index() {
        $page = 'type_list';
        $arrEventType = EventType::orderBy('id', 'DESC')->paginate(10);
        return view('admin.eventtype_list', compact('arrEventType', 'page'));
    }

    public function create($id = false) {
        $page = 'add_type';
        $eventtype = array();
        if ($id) {
            //$eventtype = EventType::find($id);
            $eventtype = DB::table('event_types')->where('id', $id)->first();
            //dd($eventtype);
            if ($eventtype == null) {
                return redirect()->route('admin.eventtype_list');
            }
        }
        return view('admin.eventtype_add', compact('eventtype', 'page'));
    }

    public function save_type(EventTypeRequest $request, $id = false) {
        $eventtype = new EventType;
        if ($id) {
            $eventtype = EventType::find($id);
        }
        $eventtype->name = $request->name;
        $eventtype->slug = $request->slug;
        $eventtype->description = $request->description;
        $eventtype->status = $request->status;
        $eventtype->save();
        return redirect()->route('admin.eventtype_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $eventtype = EventType::find($id);
        $eventtype->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

}
