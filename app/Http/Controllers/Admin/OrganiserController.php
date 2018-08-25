<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\OrganiserRequest;
use App\Model\Organiser;
use Illuminate\Support\Facades\DB;

class OrganiserController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index() {
        $page = 'organiser_list';
        $arrOrganiser = Organiser::orderBy('id', 'DESC')->paginate(10);
        return view('admin.organiser_list', compact('arrOrganiser', 'page'));
    }

    public function create($id = false) {
        $page = 'add_organiser';
        $organiser = array();
        if ($id) {
            $organiser = DB::table('organisers')->where('id', $id)->first();
            if ($organiser == null) {
                return redirect()->route('admin.organiser_list');
            }
        }
        return view('admin.organiser_add', compact('organiser', 'page'));
    }

    public function save_organiser(OrganiserRequest $request, $id = false) {


        $organiser = new Organiser;
        if ($id) {
            $organiser = Organiser::find($id);
        }

        $organiser->organiser_title = $request->organiser_title;
        $organiser->name = (!empty($request->name)) ? $request->name : '';
        $organiser->description = (!empty($request->description)) ? $request->description : '';
        $organiser->facebook_id = (!empty($request->facebook_id)) ? $request->facebook_id : '';
        $organiser->twitter_id = (!empty($request->twitter_id)) ? $request->twitter_id : '';
        $organiser->linked_id = (!empty($request->linked_id)) ? $request->linked_id : '';
        $organiser->instagram_id = (!empty($request->instagram_id)) ? $request->instagram_id : '';
        $organiser->googleplus_id = (!empty($request->googleplus_id)) ? $request->googleplus_id : '';
        $organiser->status = $request->status;
        $organiser->save();
        return redirect()->route('admin.organiser_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $organiser = Organiser::find($id);
        $organiser->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

}
