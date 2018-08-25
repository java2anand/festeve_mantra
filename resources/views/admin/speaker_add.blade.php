@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $speaker_id = (isset($speaker->id) && !empty($speaker->id)) ? $speaker->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $speaker_id == '' ? 'Add' : 'Edit' ?> Speaker</h1>
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
                        @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                        @if(Session::has('alert-' . $msg))
                        <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                        @endif
                        @endforeach
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->

                    {!! Form::open([
                        'url' => ['admin/speaker_store', $speaker_id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'speaker_form'
                        ]) !!}

                            <div class="box-body">
                                <div class="form-group">
                                    <label for="speaker_name">Speaker Name*</label>
                                    <input type="text" class="form-control" id="speaker_name" name="speaker_name" placeholder="Enter Event Speaker name" value="<?= (isset($speaker->speaker_name) && !empty($speaker->speaker_name)) ? $speaker->speaker_name: old('speaker_name') ?>">
                                    <span class="error"><?php if ($errors->has('speaker_name')){ echo $errors->first('speaker_name'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="title">Title</label>
                                    <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title" value="<?= (isset($speaker->title) && !empty($speaker->title)) ? $speaker->title: old('title') ?>">
                                    <span class="error"><?php if ($errors->has('title')){ echo $errors->first('title'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="tag_line">Tag Line</label>
                                    <input type="text" class="form-control" id="tag_line" name="tag_line" placeholder="Enter Tag Line" value="<?= (isset($speaker->tag_line) && !empty($speaker->tag_line)) ? $speaker->tag_line: old('tag_line') ?>">
                                    <span class="error"><?php if ($errors->has('tag_line')){ echo $errors->first('tag_line'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="facebook_id">Facebook Id</label>
                                    <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($speaker->facebook_id) && !empty($speaker->facebook_id)) ? $speaker->facebook_id: old('facebook_id') ?>">
                                    <span class="error"><?php if ($errors->has('facebook_id')){ echo $errors->first('facebook_id'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="twitter_id">Twitter Id</label>
                                    <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($speaker->twitter_id) && !empty($speaker->twitter_id)) ? $speaker->twitter_id: old('twitter_id') ?>">
                                    <span class="error"><?php if ($errors->has('twitter_id')){ echo $errors->first('twitter_id'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="linked_id">Linked Id</label>
                                    <input type="text" class="form-control" id="linked_id" name="linked_id" placeholder="Enter LinkedIn Id" value="<?= (isset($speaker->linked_id) && !empty($speaker->linked_id)) ? $speaker->linked_id: old('linked_id') ?>">
                                    <span class="error"><?php if ($errors->has('linked_id')){ echo $errors->first('linked_id'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="instagram_id">Instagram Id</label>
                                    <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($speaker->instagram_id) && !empty($speaker->instagram_id)) ? $speaker->instagram_id: old('instagram_id') ?>">
                                    <span class="error"><?php if ($errors->has('instagram_id')){ echo $errors->first('instagram_id'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="googleplus_id">Googleplus Id</label>
                                    <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($speaker->googleplus_id) && !empty($speaker->googleplus_id)) ? $speaker->googleplus_id: old('googleplus_id') ?>">
                                    <span class="error"><?php if ($errors->has('descgoogleplus_idription')){ echo $errors->first('googleplus_id'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="category_slug">Description</label>
                                    <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($speaker->description) && !empty($speaker->description)) ? $speaker->description: old('description') ?></textarea>
                                    <span class="error"><?php if ($errors->has('description')){ echo $errors->first('description'); } ?></span>
                                </div>

                                <div class="form-group">
                                    <label for="image">Speaker Image</label>
                                    <input type="file" class="form-control" id="image" name="image" >
                                    <span class="error"></span>
                                    <input type="hidden" name="old_image" value="<?= (isset($speaker->image) && !empty($speaker->image)) ? $speaker->image: '' ?>" />

                                    <?php
                                    $image = (isset($speaker->image) && !empty($speaker->image)) ? $speaker->image: '';
                                        if (file_exists( public_path() . '/images/speaker/thumb/' . $image)) {?>
                                            <img src="{{ asset( 'images/speaker/thumb/'.$image)}}" />
                                    <?php }?>
                                </div>

                                <div class="form-group">
                                    <label for="category_slug">Status*</label>
                                    <select class="form-control" id="status" name="status">
                                        <option value="1" <?= (isset($speaker->status) && ($speaker->status == 1)) ? 'selected': '' ?>>Active</option>
                                        <option value="0" <?= (isset($speaker->status) && ($speaker->status == 0)) ? 'selected': '' ?>>Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary"><?= $speaker_id == '' ? 'Add' : 'Update' ?></button>
                                <a href="{{ route('admin.speaker_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#speaker_form").validate({
        errorElement: 'span',
        rules: {
            speaker_name: "required",
            description: "required"
        },
        messages: {
            speaker_name: "Enter event speaker name.",
            description: "Enter description"
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
