<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\JobRequest;
use App\Model\Job;
use Illuminate\Support\Facades\DB;

class JobController extends Controller{
    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index(Request $request) {
        $page = 'job_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arrJob = Job::orderBy($field, $sort)->where('position', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.job_list', compact('arrJob', 'page','search_term'));
    }

    public function create($id = false) {
        $page = 'add_job';
        $job = array();
        if ($id) {
            $job = DB::table('jobs')->where('id', $id)->first();
            if ($job == null) {
                return redirect()->route('admin.job_list');
            }
        }
        return view('admin.job_add', compact('job', 'page'));
    }

    public function save_job(JobRequest $request, $id = false) {


        $job = new Job;
        if ($id) {
            $job = Job::find($id);
        }

        $job->position = $request->position;
        $job->start_date = !empty($request->start_date) ? date("Y-m-d", strtotime($request->start_date)) : '';
        $job->end_date = !empty($request->end_date) ? date("Y-m-d", strtotime($request->end_date)) : '';
        $job->max_exp = (!empty($request->max_exp)) ? $request->max_exp : '';
        $job->min_exp = (!empty($request->min_exp)) ? $request->min_exp : '';
        $job->min_ctc = (!empty($request->min_ctc)) ? $request->min_ctc : '';
        $job->max_ctc = (!empty($request->max_ctc)) ? $request->max_ctc : '';
        $job->job_type = (!empty($request->job_type)) ? $request->job_type : '';
        $job->job_location = (!empty($request->job_location)) ? $request->job_location : '';
        $job->total_opening = (!empty($request->total_opening)) ? $request->total_opening : '';
        $job->requirement = (!empty($request->requirement)) ? $request->requirement : '';
        $job->status = $request->status;
        $job->save();
        return redirect()->route('admin.job_list')->with('alert-success', 'Saved successfully!');
    }

    public function destroy($id) {
        $job = Job::find($id);
        $job->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }
}
