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
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arrStory = Story::orderBy($field, $sort)->where('story_name', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.story_list', compact('arrStory', 'page','search_term'));
    }

    public function create($id = false) {
        $page = 'add_story';
        $story = array();
        if ($id) {
            $story = DB::table('stories')->where('id', $id)->first();
            if ($story == null) {
                return redirect()->route('admin.story_list')->with('alert-danger', 'Story not found!');
            }
        }
        $arrCategory = DB::table('categories')->where('status', 1)->get();
        $arrAuthor = DB::table('authors')->where('status', 1)->get();
        return view('admin.story_add', compact('story','page','arrCategory','arrAuthor'));
    }

    public function save_story(StoryRequest $request, $id = false) {
        $story = new Story;
        if ($id) {
            $story = Story::find($id);
        }
        $story->story_name = $request->story_name;
        $story->category_id = $request->category_id;
        $story->author_id = $request->author_id;
        $story->slug = $request->slug;
        $story->description = !empty($request->description) ? $request->description : '';
        $story->meta_keyword = !empty($request->meta_keyword) ? $request->meta_keyword : '';
        $story->meta_description = !empty($request->meta_description) ? $request->meta_description : '';
        $story->page_title = !empty($request->page_title) ? $request->page_title : '';
        $story->status = $request->status;

        /****** image *********/
        if($request->hasFile('image')) {
            $file = $request->file('image');
            $imagename = time().'.'.$file->getClientOriginalExtension();
            $destinationPath = public_path('/images/story');
            $img = Image::make($file->getRealPath());

            if($img->save($destinationPath.'/'.$imagename,80)){
                $prev_image = public_path('images/story').'/'.$request->old_image;
                @unlink($prev_image);
            }
            $story->image  = $imagename;
        }else{
            $story->image  = (!empty($request->old_image)) ? $request->old_image : '';
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
