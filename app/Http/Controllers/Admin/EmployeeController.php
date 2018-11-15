<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\EmployeeRequest;
use App\Model\Employee;
use Illuminate\Support\Facades\DB;
use Image;

class EmployeeController extends Controller{
    public function __construct(){
        $this->middleware('auth:admin');
    }

    public function index(Request $request) {
        $page = 'employee_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';
        $arrEmployee = Employee::orderBy($field, $sort)->where('name', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.employee_list', compact('arrEmployee','page','search_term'));
    }

    public function create($id = false) {
        $page = 'employee_add';
        $employee = array();
        if ($id) {
            $employee = DB::table('employees')->where('id', $id)->first();
            if ($employee == null) {
                return redirect()->route('admin.employee_list');
            }
        }
        return view('admin.employee_add', compact('employee','page'));
    }

    public function save_employee(EmployeeRequest $request, $id = false) {
        $employee = new Employee;
        if ($id) {
            $employee = Employee::find($id);
        }

        if($request->hasFile('image')) {
            $file = $request->file('image');
            $imagename = time().'.'.$file->getClientOriginalExtension();

            $destinationPath = public_path('/images/employee');
            if($file->move($destinationPath, $imagename)){
                $prev_image_origi = public_path('images/employee').'/'.$request->old_image;
                @unlink($prev_image_origi);
            }
            $employee->image  = $imagename;

        }else{
            $employee->image        = (!empty($request->old_image)) ? $request->old_image : '';
        }

        $employee->name          = $request->name;
        $employee->designation   = (!empty($request->designation)) ? $request->designation : '';
        $employee->type          = (!empty($request->type)) ? $request->type : '';
        $employee->facebook_id   = (!empty($request->facebook_id)) ? $request->facebook_id : '';
        $employee->twitter_id    = (!empty($request->twitter_id)) ? $request->twitter_id : '';
        $employee->linkedin_id   = (!empty($request->linkedin_id)) ? $request->linkedin_id : '';
        $employee->instagram_id  = (!empty($request->instagram_id)) ? $request->instagram_id : '';
        $employee->googleplus_id = (!empty($request->googleplus_id)) ? $request->googleplus_id : '';
        $employee->about         = (!empty($request->about)) ? $request->about : '';
        $employee->status        = $request->status;
        $employee->save();
        return redirect()->route('admin.employee_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $employee = Employee::find($id);
        $image = public_path('images/employee').'/'.$employee->image;
        @unlink($image);
        $employee->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }
}
