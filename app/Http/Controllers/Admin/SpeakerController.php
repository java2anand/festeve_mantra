<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\SpeakerRequest;
use App\Model\Speaker;
use Illuminate\Support\Facades\DB;
use Image;

class SpeakerController extends Controller {

    public function __construct(){
        $this->middleware('auth:admin');
    }

    public function index() {
        $page = 'speaker_list';
        $arrSpeaker = Speaker::orderBy('id', 'DESC')->paginate(10);
        return view('admin.speaker_list', compact('arrSpeaker','page'));
    }

    public function create($id = false) {
        $page = 'add_speaker';
        $speaker = array();
        if ($id) {
            $speaker = DB::table('speakers')->where('id', $id)->first();
            if ($speaker == null) {
                return redirect()->route('admin.speaker_list');
            }
        }
        return view('admin.speaker_add', compact('speaker','page'));
    }

    public function save_speaker(SpeakerRequest $request, $id = false) {
        $speaker = new Speaker;
        if ($id) {
            $speaker = Speaker::find($id);
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
            $speaker->image  = $imagename;

        }else{
            $speaker->image        = (!empty($request->old_image)) ? $request->old_image : '';
        }

        $speaker->speaker_name = $request->speaker_name;
        $speaker->title        = (!empty($request->title)) ? $request->title : '';
        $speaker->tag_line     = (!empty($request->tag_line)) ? $request->tag_line : '';
        $speaker->facebook_id  = (!empty($request->facebook_id)) ? $request->facebook_id : '';
        $speaker->twitter_id   = (!empty($request->twitter_id)) ? $request->twitter_id : '';
        $speaker->linked_id    = (!empty($request->linked_id)) ? $request->linked_id : '';
        $speaker->instagram_id = (!empty($request->instagram_id)) ? $request->instagram_id : '';
        $speaker->googleplus_id = (!empty($request->googleplus_id)) ? $request->googleplus_id : '';
        $speaker->description  = (!empty($request->description)) ? $request->description : '';
        $speaker->status       = $request->status;
        $speaker->save();
        return redirect()->route('admin.speaker_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $speaker = Speaker::find($id);
        $speaker->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

}
