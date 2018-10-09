@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $employee_id = (isset($employee->id) && !empty($employee->id)) ? $employee->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $employee_id == '' ? 'Add' : 'Edit' ?> Employee</h1>
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
                        'url' => ['admin/employee_store', $employee_id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'employee_form'
                        ]) !!}

                            <div class="box-body">
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="name">Employee Name*</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Employee name" value="<?= (isset($employee->name) && !empty($employee->name)) ? $employee->name: old('name') ?>">
                                        <span class="error"><?php if ($errors->has('name')){ echo $errors->first('name'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="type">Employee Type*</label>
                                        <select class="form-control" id="type" name="type">
                                            <option value="emp" <?= (isset($employee->type) && ($employee->type == 'emp')) ? 'selected': '' ?>>Employee</option>
                                            <option value="owner" <?= (isset($employee->type) && ($employee->type == 'owner')) ? 'selected': '' ?>>Owner</option>
                                        </select>
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="designation">Designation</label>
                                        <input type="text" class="form-control" id="designation" name="designation" placeholder="Enter Designation" value="<?= (isset($employee->designation) && !empty($employee->designation)) ? $employee->designation: old('designation') ?>">
                                        <span class="error"><?php if ($errors->has('designation')){ echo $errors->first('designation'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="facebook_id">Facebook Id</label>
                                        <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($employee->facebook_id) && !empty($employee->facebook_id)) ? $employee->facebook_id: old('facebook_id') ?>">
                                        <span class="error"><?php if ($errors->has('facebook_id')){ echo $errors->first('facebook_id'); } ?></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="twitter_id">Twitter Id</label>
                                        <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($employee->twitter_id) && !empty($employee->twitter_id)) ? $employee->twitter_id: old('twitter_id') ?>">
                                        <span class="error"><?php if ($errors->has('twitter_id')){ echo $errors->first('twitter_id'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="linkedin_id">Linked Id</label>
                                        <input type="text" class="form-control" id="linkedin_id" name="linkedin_id" placeholder="Enter LinkedIn Id" value="<?= (isset($employee->linkedin_id) && !empty($employee->linkedin_id)) ? $employee->linkedin_id: old('linkedin_id') ?>">
                                        <span class="error"><?php if ($errors->has('linkedin_id')){ echo $errors->first('linkedin_id'); } ?></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="instagram_id">Instagram Id</label>
                                        <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($employee->instagram_id) && !empty($employee->instagram_id)) ? $employee->instagram_id: old('instagram_id') ?>">
                                        <span class="error"><?php if ($errors->has('instagram_id')){ echo $errors->first('instagram_id'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="googleplus_id">Googleplus Id</label>
                                        <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($employee->googleplus_id) && !empty($employee->googleplus_id)) ? $employee->googleplus_id: old('googleplus_id') ?>">
                                        <span class="error"><?php if ($errors->has('descgoogleplus_idription')){ echo $errors->first('googleplus_id'); } ?></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="about">About Employee</label>
                                    <textarea rows="6"  class="form-control ckeditor" id="about" name="about" ><?= (isset($employee->about) && !empty($employee->about)) ? $employee->about: old('about') ?></textarea>
                                    <span class="error"><?php if ($errors->has('about')){ echo $errors->first('about'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="image">Employee Image<span class="error">* Image must be in width & height less than (150 X 150), format (jpeg,jpg,png) and max_size(3MB)</span></label>
                                    <input type="file" class="form-control" id="image" name="image" >
                                    <span class="error"></span>
                                    <input type="hidden" name="old_image" value="<?= (isset($employee->image) && !empty($employee->image)) ? $employee->image: '' ?>" />

                                    <?php
                                    $image = (isset($employee->image) && !empty($employee->image)) ? $employee->image: '';
                                    if ( !empty($image) && file_exists( public_path() . '/images/speaker/' . $image)) {?>
                                            <img src="{{ asset( 'images/employee/'.$image)}}" width="100px" height="100px"/>
                                    <?php }?>
                                    <span class="error"><?php if ($errors->has('image')){ echo $errors->first('image'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="status">Status*</label>
                                    <select class="form-control" id="status" name="status">
                                        <option value="1" <?= (isset($employee->status) && ($employee->status == 1)) ? 'selected': '' ?>>Active</option>
                                        <option value="0" <?= (isset($employee->status) && ($employee->status == 0)) ? 'selected': '' ?>>Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary"><?= $employee_id == '' ? 'Add' : 'Update' ?></button>
                                <a href="{{ route('admin.employee_list') }}" class="btn btn-danger">Cancel</a>

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
<script>
$(document).ready(function () {
    $("#employee_form").validate({
        errorElement: 'span',
        rules: {
            name: "required",
        },
        messages: {
            speaker_name: "Enter employee name.",
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
