@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $author_id = (isset($author->id) && !empty($author->id)) ? $author->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $author_id == '' ? 'Add' : 'Edit' ?> Author</h1>
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
                        'url' => ['admin/author_store', $author_id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'author_form'
                        ]) !!}

                            <div class="box-body">
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="name">Author Name*</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Author name" value="<?= (isset($author->name) && !empty($author->name)) ? $author->name: old('name') ?>">
                                        <span class="error"><?php if ($errors->has('name')){ echo $errors->first('name'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="designation">Designation</label>
                                        <input type="text" class="form-control" id="designation" name="designation" placeholder="Enter Designation" value="<?= (isset($author->designation) && !empty($author->designation)) ? $author->designation: old('designation') ?>">
                                        <span class="error"><?php if ($errors->has('designation')){ echo $errors->first('designation'); } ?></span>
                                    </div>
                                </div>

                                <div class="form-group row">


                                    <div class="col-md-6">
                                        <label for="facebook_id">Facebook Id</label>
                                        <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($author->facebook_id) && !empty($author->facebook_id)) ? $author->facebook_id: old('facebook_id') ?>">
                                        <span class="error"><?php if ($errors->has('facebook_id')){ echo $errors->first('facebook_id'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="youtube_id">Youtube Id</label>
                                        <input type="text" class="form-control" id="youtube_id" name="youtube_id" placeholder="Enter Youtube Id" value="<?= (isset($author->youtube_id) && !empty($author->youtube_id)) ? $author->youtube_id: old('youtube_id') ?>">
                                        <span class="error"><?php if ($errors->has('youtube_id')){ echo $errors->first('youtube_id'); } ?></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="twitter_id">Twitter Id</label>
                                        <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($author->twitter_id) && !empty($author->twitter_id)) ? $author->twitter_id: old('twitter_id') ?>">
                                        <span class="error"><?php if ($errors->has('twitter_id')){ echo $errors->first('twitter_id'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="linked_id">Linked Id</label>
                                        <input type="text" class="form-control" id="linked_id" name="linked_id" placeholder="Enter LinkedIn Id" value="<?= (isset($author->linkedin_id) && !empty($author->linkedin_id)) ? $author->linkedin_id: old('linked_id') ?>">
                                        <span class="error"><?php if ($errors->has('linked_id')){ echo $errors->first('linked_id'); } ?></span>
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="instagram_id">Instagram Id</label>
                                        <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($author->instagram_id) && !empty($author->instagram_id)) ? $author->instagram_id: old('instagram_id') ?>">
                                        <span class="error"><?php if ($errors->has('instagram_id')){ echo $errors->first('instagram_id'); } ?></span>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="googleplus_id">Googleplus Id</label>
                                        <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($author->googleplus_id) && !empty($author->googleplus_id)) ? $author->googleplus_id: old('googleplus_id') ?>">
                                        <span class="error"><?php if ($errors->has('descgoogleplus_idription')){ echo $errors->first('googleplus_id'); } ?></span>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="about">About Author</label>
                                    <textarea rows="6"  class="form-control ckeditor" id="about" name="about" ><?= (isset($author->about) && !empty($author->about)) ? $author->about: old('about') ?></textarea>
                                    <span class="error"><?php if ($errors->has('about')){ echo $errors->first('about'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="image">Author Image<span class="error">* Image must be in width & height less than (200 X 200), format (jpeg,jpg,png) and max_size(3MB)</span></label>
                                    <input type="file" class="form-control" id="image" name="image" >
                                    <span class="error"></span>
                                    <input type="hidden" name="old_image" value="<?= (isset($author->image) && !empty($author->image)) ? $author->image: '' ?>" />

                                    <?php
                                    $image = (isset($author->image) && !empty($author->image)) ? $author->image: '';
                                    if ( !empty($image) && file_exists( public_path() . '/images/author/' . $image)) {?>
                                            <img src="{{ asset( 'images/author/'.$image)}}" width="100px" height="100px" alt="author"/>
                                    <?php }?>
                                    <span class="error"><?php if ($errors->has('image')){ echo $errors->first('image'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="status">Status*</label>
                                    <select class="form-control" id="status" name="status">
                                        <option value="1" <?= (isset($author->status) && ($author->status == 1)) ? 'selected': '' ?>>Active</option>
                                        <option value="0" <?= (isset($author->status) && ($author->status == 0)) ? 'selected': '' ?>>Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary"><?= $author_id == '' ? 'Add' : 'Update' ?></button>
                                <a href="{{ route('admin.author_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#author_form").validate({
        errorElement: 'span',
        rules: {
            name: "required"
        },
        messages: {
            name: "Enter name."
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
