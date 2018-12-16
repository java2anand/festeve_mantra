<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\CategoryRequest;
use App\Http\Controllers\Controller;
use App\Model\Category;
use Illuminate\Support\Facades\DB;
use Image;

class CategoryController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index(request $request) {
        $page = 'category_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arrCategory = Category::orderBy($field, $sort)->where('category_name', 'like', '%' . $search . '%')->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);

        return view('admin.category_list', compact('arrCategory', 'page', 'search_term'));
    }

    public function create($id = false) {
        $page = 'add_category';
        $arrCategory = DB::table('categories')->where('status', 1)->where('parent_id', 0)->where('id', '!=', $id)->get();
        $category = array();
        if ($id) {
            $category = DB::table('categories')->where('id', $id)->first();
            if ($category == null) {
                return redirect()->route('admin.category_list')->with('alert-danger', 'Category not found!');
            }
        }
        return view('admin.category_add', compact('category', 'arrCategory', 'page'));
    }

    public function save_category(CategoryRequest $request, $id = false) {
        $category = new Category;
        if ($id) {
            $category = Category::find($id);
        }
        $category->category_name = $request->category_name;
        $category->category_title = !empty($request->category_title)?$request->category_title:'';
        $category->slug = $request->slug;
        $category->description = !empty($request->description) ? $request->description : '';
        $category->parent_id = $request->parent_id;
        $category->status = $request->status;
        $category->popular = $request->popular;
        $category->meta_keyword = !empty($request->meta_keyword) ? $request->meta_keyword : '';
        $category->meta_description = !empty($request->meta_description) ? $request->meta_description : '';
        $category->page_title = !empty($request->page_title) ? $request->page_title : '';

        /* For Mini Icon */
        if ($request->hasFile('mini_icon')) {
            $file_icon = $request->file('mini_icon');
            $mini_icon = time() . '.' . $file_icon->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/mini_icon');
            //$thumb_img = Image::make($file->getRealPath())->resize(20, 25);

            //$destinationPath = public_path('/images/category/mini_icon');
            if ($file_icon->move($destinationPath, $mini_icon)) {
            //if ($thumb_img->save($destinationPath . '/' . $imagename, 80)) {
                $old_icon = public_path('images/category/mini_icon') . '/' . $request->old_icon;
                @unlink($old_icon);
            }
            $category->mini_icon = $mini_icon;
        } else {
            $category->mini_icon = (!empty($request->old_mini_icon)) ? $request->old_mini_icon : '';
        }


        /* For Popular Icon */
        if ($request->hasFile('popular_icon')) {
            $file_popular_icon = $request->file('popular_icon');
            $popular_icon = time() . '.' . $file_popular_icon->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/popular_icon');
            if ($file_popular_icon->move($destinationPath, $popular_icon)) {
                $old_popular_icon = public_path('images/category/popular_icon') . '/' . $request->old_popular_icon;
                @unlink($old_popular_icon);
            }
            $category->popular_icon = $popular_icon;
        } else {
            $category->popular_icon = (!empty($request->old_popular_icon)) ? $request->old_popular_icon : '';
        }

        /*         * **** image ******** */
        if ($request->hasFile('image')) {
            $file_image = $request->file('image');
            $image = time() . '.' . $file_image->getClientOriginalExtension();
            //$destinationPath = public_path('/images/category/thumb');
            //$thumb_img = Image::make($file->getRealPath())->resize(35, 34);
            //$thumb_img->save($destinationPath . '/' . $imagename, 80);

            $destinationPath = public_path('/images/category/image');
            if ($file_image->move($destinationPath, $image)) {
                $prev_image = public_path('images/category/image') . '/' . $request->old_image;
                @unlink($prev_image);
            }
            $category->image = $image;
        } else {
            $category->image = (!empty($request->old_image)) ? $request->old_image : '';
        }

        /*         * **** image ******** */
        if ($request->hasFile('event_image')) {
            $file_event_image = $request->file('event_image');
            $event_image = time() . '.' . $file_event_image->getClientOriginalExtension();

            $destinationPath = public_path('/images/category/event_image');
            if ($file_event_image->move($destinationPath, $event_image)) {
                $prev_event_image = public_path('images/category/event_image') . '/' . $request->old_event_image;
                @unlink($prev_event_image);
            }
            $category->event_image = $event_image;
        } else {
            $category->event_image = (!empty($request->old_event_image)) ? $request->old_event_image : '';
        }

        /*         * **** top_banner ******** */
        if ($request->hasFile('top_banner')) {
            $file_tb = $request->file('top_banner');
            $top_banner = time() . '.' . $file_tb->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/top_banner');
            if ($file_tb->move($destinationPath, $top_banner)) {
                $prev_top_banner = public_path('images/category/top_banner') . '/' . $request->old_top_banner;
                @unlink($prev_top_banner);
            }
            $category->top_banner = $top_banner;
        } else {
            $category->top_banner = (!empty($request->old_top_banner)) ? $request->old_top_banner : '';
        }

        /*         * **** right_banner ******** */
        if ($request->hasFile('right_banner')) {
            $file_rb = $request->file('right_banner');
            $right_banner = time() . '.' . $file_rb->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/right_banner');
            if ($file_rb->move($destinationPath, $right_banner)) {
                $prev_right_banner = public_path('images/category/right_banner') . '/' . $request->old_right_banner;
                @unlink($prev_right_banner);
            }
            $category->right_banner = $right_banner;
        } else {
            $category->right_banner = (!empty($request->old_right_banner)) ? $request->old_right_banner : '';
        }

        $category->save();
        return redirect()->route('admin.category_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $category = Category::find($id);
        $event_image = public_path('images/category/event_image') . '/' . $category->event_image;
        $image = public_path('images/category/image') . '/' . $category->image;
        $mini_icon = public_path('images/category/mini_icon') . '/' . $category->mini_icon;
        $popular_icon = public_path('images/category/popular_icon') . '/' . $category->popular_icon;
        $right_banner = public_path('images/category/right_banner') . '/' . $category->right_banner;
        $top_banner = public_path('images/category/top_banner') . '/' . $category->top_banner;

        @unlink($event_image);
        @unlink($image);
        @unlink($mini_icon);
        @unlink($popular_icon);
        @unlink($right_banner);
        @unlink($top_banner);
        $category->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

    public function category_sorting(){
        $page = 'category-sorting';
        $arr_category = Category::orderBy('sort_order','ASC')->select('id','parent_id','category_name')->where('status',1)->get();

        return view('admin.category_sorting', compact('arr_category', 'page'));
    }

    public function update_order(Request $request){

        $arr_order = $request->order;
        if(count($arr_order)>0){
            foreach ($arr_order as $order) {
                DB::table('categories')->where('id', $order['id'])->update(['sort_order' => $order['position']]);
            }
        }
        return response('Update Successfully.', 200);
    }

}
