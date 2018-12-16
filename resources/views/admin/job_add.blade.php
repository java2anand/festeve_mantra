@include('admin.admin-header')
@include('admin.admin-sidebar')
<link rel="stylesheet" href="{{asset('admin/plugins/datepicker/bootstrap-datepicker.min.css') }}">
<link rel="stylesheet" href="{{asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}">
<?php $job_id = (isset($job->id) && !empty($job->id)) ? $job->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $job_id == '' ? 'Add' : 'Edit' ?> Job</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="col-md-12">
                        @include('admin.admin-error')
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->

                    {!! Form::open([
                    'url' => ['admin/job_store', $job_id],
                    'id' => 'job_form'
                    ]) !!}

                    <div class="box-body">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="position">Position Name*</label>
                                <input type="text" class="form-control" id="position" name="position" placeholder="Enter Position" value="<?= (isset($job->position) && !empty($job->position)) ? $job->position : old('position') ?>">
                                <span class="error"><?php if ($errors->has('position')) {
        echo $errors->first('position');
    } ?></span>
                            </div>
                            <div class="col-md-3">
                                <label for="total_opening">Total Opening</label>
                                <input type="text" class="form-control" id="total_opening" name="total_opening" placeholder="Total Opening" value="<?= (isset($job->total_opening) && !empty($job->total_opening)) ? $job->total_opening : old('total_opening') ?>">
                                <span class="error"><?php if ($errors->has('total_opening')) {
        echo $errors->first('total_opening');
    } ?></span>
                            </div>
                            <div class="col-md-3">
                                <label for="status">Status</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="1" <?= (isset($job->status) && ($job->status == 1)) ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= (isset($job->status) && ($job->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-3">
                                <label for="start_date">From Date</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right datepicker" id="start_date" name="start_date" placeholder="Enter Start Date" value="<?= (isset($job->start_date) && !empty($job->start_date)) ? date('d-m-Y', strtotime($job->start_date)) : old('start_date') ?>" autocomplete="off">
                                    <span class="error"><?php
                                        if ($errors->has('start_date')) {
                                            echo $errors->first('start_date');
                                        }
                                        ?></span>
                                </div>

                            </div>

                            <div class="col-md-3">
                                <label for="end_date">To Date</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right datepicker" id="end_date" name="end_date" placeholder="Enter End Date" value="<?= (isset($job->end_date) && !empty($job->end_date)) ? date('d-m-Y', strtotime($job->end_date)) : old('end_date') ?>" autocomplete="off">
                                    <span class="error"><?php
                                        if ($errors->has('end_date')) {
                                            echo $errors->first('end_date');
                                        }
                                        ?></span>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="min_exp">Minimum Experience</label>
                                <input type="text" class="form-control" id="min_exp" name="min_exp"  value="<?= (isset($job->min_exp) && !empty($job->min_exp)) ? $job->min_exp : old('min_exp') ?>">
                                <span class="error"><?php if ($errors->has('min_exp')) {
        echo $errors->first('min_exp');
    } ?></span>
                            </div>

                            <div class="col-md-3">
                                <label for="max_exp">Maximum Experience</label>
                                <input type="text" class="form-control" id="max_exp" name="max_exp"  value="<?= (isset($job->max_exp) && !empty($job->max_exp)) ? $job->max_exp : old('max_exp') ?>">
                                <span class="error"><?php if ($errors->has('max_exp')) {
        echo $errors->first('max_exp');
    } ?></span>
                            </div>

                        </div>

                        <div class="form-group row">
                            <div class="col-md-3">
                                <label for="min_ctc">Minimum Ctc</label>
                                <input type="text" class="form-control" id="min_ctc" name="min_ctc"  value="<?= (isset($job->min_ctc) && !empty($job->min_ctc)) ? $job->min_ctc : old('min_ctc') ?>">
                                <span class="error"><?php if ($errors->has('min_ctc')) {
        echo $errors->first('min_ctc');
    } ?></span>
                            </div>

                            <div class="col-md-3">
                                <label for="max_ctc">Maximum Ctc</label>
                                <input type="text" class="form-control" id="max_ctc" name="max_ctc"  value="<?= (isset($job->max_ctc) && !empty($job->max_ctc)) ? $job->max_ctc : old('max_ctc') ?>">
                                <span class="error"><?php if ($errors->has('max_ctc')) {
        echo $errors->first('max_ctc');
    } ?></span>
                            </div>

                            <div class="col-md-3">
                                <label for="job_type">Job Type</label>
                                <input type="text" class="form-control" id="job_type" name="job_type"  value="<?= (isset($job->job_type) && !empty($job->job_type)) ? $job->job_type : old('job_type') ?>">
                                <span class="error"><?php if ($errors->has('job_type')) {
        echo $errors->first('job_type');
    } ?></span>
                            </div>

                            <div class="col-md-3">
                                <label for="job_location">Job Location</label>
                                <input type="text" class="form-control" id="job_location" name="job_location"  value="<?= (isset($job->job_location) && !empty($job->job_location)) ? $job->job_location : old('job_location') ?>">
                                <span class="error"><?php if ($errors->has('job_location')) {
        echo $errors->first('job_location');
    } ?></span>
                            </div>

                        </div>


                        <div class="form-group">
                            <label for="requirement">Requirement</label>
                            <textarea rows="6"  class="form-control ckeditor" id="requirement" name="requirement" ><?= (isset($job->requirement) && !empty($job->requirement)) ? $job->requirement : old('requirement') ?></textarea>
                            <span class="error"><?php if ($errors->has('requirement')) {
    echo $errors->first('requirement');
} ?></span>
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary"><?= $job_id == '' ? 'Add' : 'Update' ?></button>
                        <a href="{{ route('admin.job_list') }}" class="btn btn-danger">Cancel</a>

                    </div>
                    {!! Form::close() !!}
                </div>
                <!-- /.box -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@include('admin/admin-footer')
<script src="{{asset('admin/plugins/ckeditor/ckeditor.js') }}"></script>
<script src="{{asset('admin/plugins/datepicker/bootstrap-datepicker.min.js') }}"></script>
<script src="{{asset('admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
<script>
$(document).ready(function () {
    var date = new Date();
    var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
    var end = new Date(date.getFullYear(), date.getMonth(), date.getDate());
    $("#start_date").datepicker({
        format: "dd-mm-yyyy",
        todayHighlight: true,
        startDate: today,
        //endDate: end,
        autoclose: true
    }).on('changeDate', function (selected) {
        var minDate = new Date(selected.date.valueOf());
        $('#end_date').datepicker('setStartDate', minDate);
    });

    $("#end_date").datepicker({
        format: "dd-mm-yyyy",
        todayHighlight: true,
        startDate: today,
        autoclose: true
    }).on('changeDate', function (selected) {
        var minDate = new Date(selected.date.valueOf());
        $('#start_date').datepicker('setEndDate', minDate);
    });

    $("#organiser_form").validate({
        errorElement: 'span',
        rules: {
            name: "required",
            organiser_title: "required"
        },
        messages: {
            name: "Enter organiser name.",
            organiser_title: "Enter organiser title"
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
