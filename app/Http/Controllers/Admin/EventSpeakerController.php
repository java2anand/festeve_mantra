<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\EventSpeakerRequest;
use App\Model\EventSpeaker;
use Illuminate\Support\Facades\DB;
use Image;

class EventSpeakerController extends Controller {

    public function __construct(){
        $this->middleware('auth:admin');
    }

    public function index() {
        $page = 'speaker_list';
        $arrEventSpeaker = EventSpeaker::orderBy('id', 'DESC')->paginate(10);
        return view('admin.eventspeaker_list', compact('arrEventSpeaker','page'));
    }

    public function create($id = false) {
        $page = 'add_speaker';
        $eventspeaker = array();
        if ($id) {
            $eventspeaker = DB::table('event_speakers')->where('id', $id)->first();
            if ($eventspeaker == null) {
                return redirect()->route('admin.eventspeaker_list');
            }
        }
        return view('admin.eventspeaker_add', compact('eventspeaker','page'));
    }

    public function save_speaker(EventSpeakerRequest $request, $id = false) {
        $eventspeaker = new EventSpeaker;
        if ($id) {
            $eventspeaker = EventSpeaker::find($id);
        }

        if($request->hasFile('image')) {
            $file = $request->file('image');
            $imagename = time().'.'.$file->getClientOriginalExtension();
            $destinationPath = public_path('/images/speaker/thumb');
            $thumb_img = Image::make($file->getRealPath())->resize(100, 100);
            $thumb_img->save($destinationPath.'/'.$imagename,80);

            $destinationPath = public_path('/images/speaker');
            if($file->move($destinationPath, $imagename)){
                $prev_image_origi = public_path('images/speaker').'/'.$request->old_image;
                $prev_image_thumb = public_path('images/speaker/thumb').'/'.$request->old_image;

                @unlink($prev_image_origi);
                @unlink($prev_image_thumb);
            }
            $eventspeaker->image  = $imagename;

        }else{
            $eventspeaker->image        = (!empty($request->old_image)) ? $request->old_image : '';
        }

        $eventspeaker->speaker_name = $request->speaker_name;
        $eventspeaker->title        = (!empty($request->title)) ? $request->title : '';
        $eventspeaker->tag_line     = (!empty($request->tag_line)) ? $request->tag_line : '';
        $eventspeaker->facebook_id  = (!empty($request->facebook_id)) ? $request->facebook_id : '';
        $eventspeaker->twitter_id   = (!empty($request->twitter_id)) ? $request->twitter_id : '';
        $eventspeaker->linked_id    = (!empty($request->linked_id)) ? $request->linked_id : '';
        $eventspeaker->instagram_id = (!empty($request->instagram_id)) ? $request->instagram_id : '';
        $eventspeaker->googleplus_id = (!empty($request->googleplus_id)) ? $request->googleplus_id : '';
        $eventspeaker->description  = (!empty($request->description)) ? $request->description : '';
        $eventspeaker->status       = $request->status;
        $eventspeaker->save();
        return redirect()->route('admin.eventspeaker_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $eventspeaker = EventSpeaker::find($id);
        $eventspeaker->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

}
