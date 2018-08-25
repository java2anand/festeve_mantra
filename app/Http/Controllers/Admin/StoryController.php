<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\StoryRequest;
use App\Http\Controllers\Controller;
use App\Model\Story;
use Illuminate\Support\Facades\DB;
use Image;

class StoryController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index(request $request) {
        $page = 'story_list';
        $search_term = $request->search;
        $arrStory = Story::orderBy('id', 'DESC')
                ->when($search_term , function ($query) use ($search_term) {
                    return $query->where('event_stories.story_name', 'like', '%' . $search_term . '%');
                })->paginate(10);
        return view('admin.story_list', compact('arrStory', 'page','search_term'));
    }

    public function create($id = false) {
        $page = 'add_story';
        $story = array();
        if ($id) {
            $story = DB::table('event_stories')->where('id', $id)->first();
            if ($story == null) {
                return redirect()->route('admin.story_list')->with('alert-danger', 'Story not found!');
            }
        }
        return view('admin.story_add', compact('story','page'));
    }

    public function save_story(StoryRequest $request, $id = false) {
        $story = new Story;
        if ($id) {
            $story = Story::find($id);
        }
        $story->story_name = $request->story_name;
        $story->narrator_name = $request->narrator_name;
        $story->short_desc = !empty($request->short_desc) ? $request->short_desc : '';
        $story->description = !empty($request->description) ? $request->description : '';
        $story->status = $request->status;

        /****** image *********/
        if($request->hasFile('image')) {
            $file = $request->file('image');
            $imagename = time().'.'.$file->getClientOriginalExtension();
            $destinationPath = public_path('/images/story');
            $img = Image::make($file->getRealPath())->resize(200, 200);

            if($img->save($destinationPath.'/'.$imagename,80)){
                $prev_image = public_path('images/story').'/'.$request->old_image;
                @unlink($prev_image);
            }
            $story->image  = $imagename;
        }else{
            $story->image  = (!empty($request->old_image)) ? $request->old_image : '';
        }

        /****** narrator image *********/
        if($request->hasFile('narrator_image')) {
            $file = $request->file('narrator_image');
            $nimagename = time().'.'.$file->getClientOriginalExtension();
            $destinationPath = public_path('/images/story/narrator');
            $img = Image::make($file->getRealPath())->resize(50, 50);

            if($img->save($destinationPath.'/'.$nimagename,80)){
                $prev_narrator_image = public_path('images/story/narrator').'/'.$request->old_narrator_image;
                @unlink($prev_narrator_image);
            }
            $story->narrator_image  = $nimagename;
        }else{
            $story->narrator_image  = (!empty($request->old_narrator_image)) ? $request->old_narrator_image : '';
        }

        $story->save();
        return redirect()->route('admin.story_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $story = Story::find($id);
        $story->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

}
