<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\AuthorRequest;
use App\Model\Author;
use Illuminate\Support\Facades\DB;
use Image;


class AuthorController extends Controller
{
    public function __construct(){
        $this->middleware('auth:admin');
    }

    public function index(Request $request) {
        $page = 'author_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';
        $arrAuthor = Author::orderBy($field, $sort)->where('name', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.author_list', compact('arrAuthor','page','search_term'));
    }

    public function create($id = false) {
        $page = 'add_author';
        $author = array();
        if ($id) {
            $author = DB::table('authors')->where('id', $id)->first();
            if ($author == null) {
                return redirect()->route('admin.author_list');
            }
        }
        return view('admin.author_add', compact('author','page'));
    }

    public function save_author(AuthorRequest $request, $id = false) {
        $author = new Author;
        if ($id) {
            $author = Author::find($id);
        }

        if($request->hasFile('image')) {
            $file = $request->file('image');
            $imagename = time().'.'.$file->getClientOriginalExtension();
            $destinationPath = public_path('/images/author');
            if($file->move($destinationPath, $imagename)){
                $prev_image_origi = public_path('images/author').'/'.$request->old_image;
                @unlink($prev_image_origi);
            }
            $author->image  = $imagename;

        }else{
            $author->image = (!empty($request->old_image)) ? $request->old_image : '';
        }

        $author->name           = $request->name;
        $author->designation    = (!empty($request->designation)) ? $request->designation : '';
        $author->about          = (!empty($request->about)) ? $request->about : '';
        $author->facebook_id    = (!empty($request->facebook_id)) ? $request->facebook_id : '';
        $author->twitter_id     = (!empty($request->twitter_id)) ? $request->twitter_id : '';
        $author->linkedin_id    = (!empty($request->linked_id)) ? $request->linked_id : '';
        $author->instagram_id   = (!empty($request->instagram_id)) ? $request->instagram_id : '';
        $author->googleplus_id  = (!empty($request->googleplus_id)) ? $request->googleplus_id : '';
        $author->youtube_id     = (!empty($request->youtube_id)) ? $request->youtube_id : '';
        $author->status         = $request->status;
        $author->save();
        return redirect()->route('admin.author_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $author = Author::find($id);
        $author->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }
}
