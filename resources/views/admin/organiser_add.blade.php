@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $organiser_id = (isset($organiser->id) && !empty($organiser->id)) ? $organiser->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $organiser_id == '' ? 'Add' : 'Edit' ?> Organiser</h1>
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
                    'url' => ['admin/organiser_store', $organiser_id],
                    'id' => 'organiser_form'
                    ]) !!}

                    <div class="box-body">
                        <div class="form-group">
                            <label for="organiser_title">Organiser Title*</label>
                            <input type="text" class="form-control" id="organiser_title" name="organiser_title" placeholder="Enter Event Organiser Title" value="<?= (isset($organiser->organiser_title) && !empty($organiser->organiser_title)) ? $organiser->organiser_title : old('organiser_title') ?>">
                            <span class="error"><?php if ($errors->has('organiser_title')) {
    echo $errors->first('organiser_title');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="name">Organiser Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Organiser Name" value="<?= (isset($organiser->name) && !empty($organiser->name)) ? $organiser->name : old('name') ?>">
                            <span class="error"><?php if ($errors->has('name')) {
    echo $errors->first('name');
} ?></span>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="facebook_id">Facebook Id</label>
                                <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($organiser->facebook_id) && !empty($organiser->facebook_id)) ? $organiser->facebook_id : old('facebook_id') ?>">
                                <span class="error"><?php if ($errors->has('facebook_id')) {
        echo $errors->first('facebook_id');
    } ?></span>
                            </div>

                            <div class="col-md-6">
                                <label for="twitter_id">Twitter Id</label>
                                <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($organiser->twitter_id) && !empty($organiser->twitter_id)) ? $organiser->twitter_id : old('twitter_id') ?>">
                                <span class="error"><?php if ($errors->has('twitter_id')) {
        echo $errors->first('twitter_id');
    } ?></span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="linked_id">Linked Id</label>
                                <input type="text" class="form-control" id="linked_id" name="linked_id" placeholder="Enter LinkedIn Id" value="<?= (isset($organiser->linked_id) && !empty($organiser->linked_id)) ? $organiser->linked_id : old('linked_id') ?>">
                                <span class="error"><?php if ($errors->has('linked_id')) {
        echo $errors->first('linked_id');
    } ?></span>
                            </div>

                            <div class="col-md-6">
                                <label for="instagram_id">Instagram Id</label>
                                <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($organiser->instagram_id) && !empty($organiser->instagram_id)) ? $organiser->instagram_id : old('instagram_id') ?>">
                                <span class="error"><?php if ($errors->has('instagram_id')) {
        echo $errors->first('instagram_id');
    } ?></span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="googleplus_id">Googleplus Id</label>
                                <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($organiser->googleplus_id) && !empty($organiser->googleplus_id)) ? $organiser->googleplus_id : old('googleplus_id') ?>">
                                <span class="error"><?php if ($errors->has('descgoogleplus_idription')) {
        echo $errors->first('googleplus_id');
    } ?></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($organiser->description) && !empty($organiser->description)) ? $organiser->description : old('description') ?></textarea>
                            <span class="error"><?php if ($errors->has('description')) {
    echo $errors->first('description');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="status">Status*</label>
                            <select class="form-control" id="status" name="status">
                                <option value="1" <?= (isset($organiser->status) && ($organiser->status == 1)) ? 'selected' : '' ?>>Active</option>
                                <option value="0" <?= (isset($organiser->status) && ($organiser->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                            </select>
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary"><?= $organiser_id == '' ? 'Add' : 'Update' ?></button>
                        <a href="{{ route('admin.organiser_list') }}" class="btn btn-danger">Cancel</a>

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
