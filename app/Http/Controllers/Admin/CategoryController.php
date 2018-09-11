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

        $arrCategory = Category::orderBy($field, $sort)->where('category_name', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);

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
        $category->slug = $request->slug;
        $category->description = !empty($request->description) ? $request->description : '';
        $category->parent_id = $request->parent_id;
        $category->status = $request->status;
        $category->meta_title = !empty($request->meta_title) ? $request->meta_title : '';
        $category->meta_keyword = !empty($request->meta_keyword) ? $request->meta_keyword : '';
        $category->meta_description = !empty($request->meta_description) ? $request->meta_description : '';
        $category->page_title = !empty($request->page_title) ? $request->page_title : '';
        $category->page_description = !empty($request->page_description) ? $request->page_description : '';

        /* For Mini Icon */
        if ($request->hasFile('mini_icon')) {
            $file = $request->file('mini_icon');
            $imagename = time() . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/mini_icon');
            $thumb_img = Image::make($file->getRealPath())->resize(20, 25);

            //$destinationPath = public_path('/images/category/mini_icon');
            //if ($file->move($destinationPath, $imagename)) {
            if ($thumb_img->save($destinationPath . '/' . $imagename, 80)) {
                $prev_image_origi = public_path('images/category/mini_icon') . '/' . $request->old_icon;
                @unlink($prev_image_origi);
            }
            $category->mini_icon = $imagename;
        } else {
            $category->mini_icon = (!empty($request->old_icon)) ? $request->old_icon : '';
        }

        /*         * **** icon + thumbnail ******** */
        if ($request->hasFile('icon')) {
            $file = $request->file('icon');
            $imagename = time() . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/thumb');
            $thumb_img = Image::make($file->getRealPath())->resize(35, 34);
            $thumb_img->save($destinationPath . '/' . $imagename, 80);

            $destinationPath = public_path('/images/category/icon');
            if ($file->move($destinationPath, $imagename)) {
                $prev_image_origi = public_path('images/category/icon') . '/' . $request->old_icon;
                $prev_image_thumb = public_path('images/category/thumb') . '/' . $request->old_icon;

                @unlink($prev_image_origi);
                @unlink($prev_image_thumb);
            }
            $category->icon = $imagename;
            $category->thumbnail = $imagename;
        } else {
            $category->icon = (!empty($request->old_icon)) ? $request->old_icon : '';
            $category->thumbnail = (!empty($request->old_icon)) ? $request->old_icon : '';
        }

        /*         * **** top_banner ******** */
        if ($request->hasFile('top_banner')) {
            $file = $request->file('top_banner');
            $imagename = time() . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/top_banner');
            if ($file->move($destinationPath, $imagename)) {
                $prev_image_thumb = public_path('images/category/top_banner') . '/' . $request->old_top_banner;
                @unlink($prev_image_thumb);
            }
            $category->top_banner = $imagename;
        } else {
            $category->top_banner = (!empty($request->old_top_banner)) ? $request->old_top_banner : '';
        }

        /*         * **** right_banner ******** */
        if ($request->hasFile('right_banner')) {
            $file = $request->file('right_banner');
            $imagename = time() . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('/images/category/right_banner');
            if ($file->move($destinationPath, $imagename)) {
                $prev_image_thumb = public_path('images/category/right_banner') . '/' . $request->old_right_banner;
                @unlink($prev_image_thumb);
            }
            $category->right_banner = $imagename;
        } else {
            $category->right_banner = (!empty($request->old_right_banner)) ? $request->old_right_banner : '';
        }

        $category->save();
        return redirect()->route('admin.category_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $category = Category::find($id);
        $category->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

    public function category_sorting(){
        $page = 'category-sorting';
        $arr_category = Category::orderBy('sort_order','ASC')->select('id','category_name')->where('status',1)->where('parent_id',0)->get();

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
