<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Model\Newsletter;
use Auth;
use Image;
use Hash;

class AdminController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:admin');
    }

    /**
     * show dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $page = 'dashboard';
        $data['total_events'] = DB::table('events')->count();
        $data['total_category'] = DB::table('categories')->count();
        $data['total_organiser'] = DB::table('organisers')->count();
        $data['total_speaker'] = DB::table('speakers')->count();
        $data['arrEvents'] = DB::table('events')->orderBy('id','DESC')->limit(10)->get();

        return view('admin.home',compact('page','data'));
    }

    public function profile(Request $request) {
        $tab = '';
        $user_id = Auth::guard('admin')->user()->id;
        $user = DB::table('admins')->select('admins.*','tbl_state.state_name','tbl_city.city_name')
                ->join('tbl_state', 'tbl_state.state_id', '=', 'admins.state')
                ->join('tbl_city', 'tbl_city.city_id', '=', 'admins.city')
                ->where('id',$user_id)->first();

        $state_list = array();
        $branch_city_info = array();
        $city_list = array();

        $state_list = DB::table('tbl_state')->get();
        if (isset($user->state) && !empty($user->state)) {
            $city_list = DB::table('tbl_city')->where('state_id',$user->state)->get();
        }

        if ($request->sub_basic_info == 'Basic Info') {
            $tab = 'Basic_Info';
            $this->validate($request, [
                'firstname' => 'required',
                'lastname' => 'required'
            ]);

            $saveArray = array(
                'firstname' => $request->firstname,
                'lastname' => $request->lastname,
                'contact_number' => $request->contact_number,
                'address' => $request->address,
                'country' => $request->country,
                'state' => $request->state,
                'city' => $request->city,
                'postal_code' => $request->postal_code,
                'updated_at' => date('Y-m-d H:i:s'),
            );
            //update admin table
            $save = DB::table('admins')->where('id', $user_id)->update($saveArray);
            if($save){
                $request->session()->flash('basic_info_msg', "<div class='col-md-12 alert alert-success text-center'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Basic Info Updated !</div>");
            }else{
                $request->session()->flash('basic_info_msg', "<div class='alert alert-danger text-center'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Problem in Updating Basic Info !</div>");
            }
            return redirect('admin/profile/?tab='.$tab);

        }  else if ($request->sub_password_info == 'Change Password Info') {
            $tab = 'Change_Password_Info';
            $this->validate($request, [
                'old_pass' => 'required',
                'new_pass' => 'required',
                'confirm_pass' => 'required'
            ]);

            $user_password = $user->password;
            $old_pass = ($request->old_pass);
            $new_pass = ($request->new_pass);
            $confirm_pass = ($request->confirm_pass);

            if(Hash::check($old_pass, $user_password)){
                if ($confirm_pass == $new_pass) {

                    $updateArray = array(
                        'password' => bcrypt($confirm_pass),
                        'updated_at' => date('Y-m-d H:i:s'),
                    );
                    $save = DB::table('admins')->where('id', $user_id)->update($updateArray);
                    if ($save) {
                        $request->session()->flash('change_pass_msg', "<div class='alert alert-success text-center'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Password Change Successfully !</div>");

                    } else {
                        $request->session()->flash('change_pass_msg', "<div class='alert alert-danger text-center'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Problem in Changing Password !</div>");
                    }
                } else {
                    $request->session()->flash('change_pass_msg', "<div class='alert alert-danger text-center'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Password does not match!</div>");

                }
            }else{
                 $request->session()->flash('change_pass_msg', "<div class='alert alert-danger text-center'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Enter a valid old password!</div>");
            }

            return redirect('admin/profile/?tab='.$tab);
        }
        return view('admin.profile',compact('user','state_list','city_list','tab'));
    }

    public function upload_image(Request $request){
        $user_id = Auth::guard('admin')->user()->id;
        $user = DB::table('admins')->where('id',$user_id)->first();

        $prev_image_origi = public_path('admin/profile_image').'/'.$user->profile_img;
        $prev_image_thumb = public_path('admin/profile_image/thumb').'/'.$user->profile_img;

        //get image data from request
        $image = $request->file('image_upload');
        $input['imagename'] = time().'.'.$image->getClientOriginalExtension();

        //save thumbnail image
        $destinationPath = public_path('admin/profile_image/thumb');
        $img = Image::make($image->getRealPath());
                $img->resize(160, 160, function ($constraint){
                    $constraint->aspectRatio();
                })->save($destinationPath.'/'.$input['imagename']);
        //save original image
        $destinationPath = public_path('admin/profile_image');
        $image->move($destinationPath, $input['imagename']);

        //save image in table and update status
        $save = DB::table('admins')->where('id', $user_id)->update(array('profile_img'=>$input['imagename']));
        //delete previous image
        @unlink($prev_image_origi);
        @unlink($prev_image_thumb);
        //save and return response
        if($save){
            $msg='true';
            header('Content-Type: application/x-json; charset=utf-8');
            $result = json_encode(array('status'=>$msg,'imagename'=>$input['imagename']));
            echo  $result;
            die;
        }
    }

    public function newsletters(Request $request) {
        $page = 'newsletter';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arrNewsletter = DB::table('newsletters')->orderBy($field, $sort)->where('email', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.newsletter',compact('arrNewsletter','page','search_term'));
    }

    public function destroy_newsletters($id) {
        $newsletter = Newsletter::find($id);
        $newsletter->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

    public function newsletters_edit($id = false) {
        $page = 'newsletter';
        $newsletters = array();
        if ($id) {
            $newsletters = DB::table('newsletters')->where('id', $id)->first();
            if ($newsletters == null) {
                return redirect()->route('admin.newsletters_list');
            }
        }
        return view('admin.newsletters_add', compact('newsletters','page'));
    }

    public function save_newsletters(Request $request, $id = false) {
        if ($id) {
            $newsletters = Newsletter::find($id);
        }
        $newsletters->email     = $request->email;
        $newsletters->status    = $request->status;
        $newsletters->save();
        return redirect()->route('admin.newsletter_list')->with('alert-success', 'Saved successfully!');
    }

    public function setting_list(Request $request){
        $page = 'setting_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arr_setting = DB::table('site_settings')->select('id','var_name','var_title','var_value')->orderBy($field, $sort)->where('var_title', 'like', '%' . $search . '%')->paginate(20)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.setting_list', compact('arr_setting', 'page','search_term'));
    }

    public function site_setting(Request $request, $id) {
        if(!$id){
            return redirect()->route('admin.setting_list');
        }
        $page = 'site_setting';
        $site_setting = DB::table('site_settings')->select('id','var_name','var_title','var_value')->where('id',$id)->first();

        if ($request->isMethod('post')) {
            $update_array = array(
                'var_title'     => (!empty($request->var_title)) ? $request->var_title : '',
                'var_value'     => (!empty($request->var_value)) ? $request->var_value : '',
            );

            /*if($request->hasFile('logo')) {
                $file = $request->file('logo');
                $imagename = time().'.'.$file->getClientOriginalExtension();
                $destinationPath = public_path('/images/logo');
                if($file->move($destinationPath, $imagename)){
                    $prev_image_origi = public_path('images/logo').'/'.$request->old_logo;
                    @unlink($prev_image_origi);
                }
                $update_array['logo']  = $imagename;

            }else{
                $update_array['logo'] = (!empty($request->old_logo)) ? $request->old_logo : '';
            }*/
            $save = DB::table('site_settings')->where('id',$id)->update($update_array);
            $request->session()->flash('alert-success', 'Site setting updated successfully.');
            return redirect('admin/setting_list');
        }
        return view('admin.site_setting',compact('site_setting','page'));
    }


    public function pages_list(Request $request){
        $page = 'pages_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arr_pages = DB::table('pages')->orderBy($field, $sort)->where('title', 'like', '%' . $search . '%')->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.pages_list', compact('arr_pages', 'page','search_term'));
    }

    public function page_setting(Request $request, $id) {
        if(!$id){
            return redirect()->route('admin.pages_list');
        }
        $page = 'page_setting';
        $page_data = DB::table('pages')->where('id',$id)->first();

        if ($request->isMethod('post')) {
            $update_array = array(
                'title'     => (!empty($request->title)) ? $request->title : '',
                'content'     => (!empty($request->content)) ? $request->content : '',
                'page_title'     => (!empty($request->page_title)) ? $request->page_title : '',
                'meta_keyword'     => (!empty($request->meta_keyword)) ? $request->meta_keyword : '',
                'meta_description'     => (!empty($request->meta_description)) ? $request->meta_description : '',
            );

            $save = DB::table('pages')->where('id',$id)->update($update_array);
            $request->session()->flash('alert-success', 'Pages content updated successfully.');
            return redirect('admin/pages_list');
        }
        return view('admin.page_setting',compact('page_data','page'));
    }


    public function getCityByState(Request $request){
        $state_id = $request->state_id;
        $city_list = DB::table('tbl_city')->select('city_id','city_name')->where('state_id',$state_id)->get();

        header('Content-Type: application/x-json; charset=utf-8');
        $result = json_encode(array('success'=>true,'city_info'=>$city_list));
        echo  $result;
        die;
    }

}
