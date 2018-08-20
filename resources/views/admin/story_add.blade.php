@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $story_id = (isset($story->id) && !empty($story->id)) ? $story->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $story_id == '' ? 'Add' : 'Edit' ?> Event Story</h1>
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
                        'url' => ['admin/story_store', $story_id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'story_form',
                    ]) !!}
                        <div class="box-body">
                            <div class="form-group">
                                <label for="story_name">Story Name*</label>
                                <input type="text" class="form-control" id="story_name" name="story_name" placeholder="Enter Story name" value="<?= (isset($story->story_name) && !empty($story->story_name)) ? $story->story_name : old('story_name') ?>">
                                <span class="error"><?php
                                    if ($errors->has('story_name')) {
                                        echo $errors->first('story_name');
                                    }
                                    ?></span>
                            </div>


                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea rows="6"  class="form-control ckeditor" id="short_desc" name="short_desc" ><?= (isset($story->short_desc) && !empty($story->short_desc)) ? $story->short_desc : old('short_desc') ?></textarea>
                                <span class="error"><?php
                                    if ($errors->has('short_desc')) {
                                        echo $errors->first('short_desc');
                                    }
                                    ?></span>

                            </div>

                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($story->description) && !empty($story->description)) ? $story->description : old('description') ?></textarea>
                                <span class="error"><?php
                                    if ($errors->has('description')) {
                                        echo $errors->first('description');
                                    }
                                    ?></span>

                            </div>

                            <div class="form-group">
                                <label for="image">Story Image</label>
                                <input type="file" class="form-control" id="image" name="image" >
                                <span class="error"></span>
                                <input type="hidden" name="old_image" value="<?= (isset($story->image) && !empty($story->image)) ? $story->image: '' ?>" />

                                <?php
                                    $image = (isset($story->image) && !empty($story->image)) ? $story->image: '';
                                    if (file_exists( public_path() . '/images/story/' . $image)) {?>
                                        <img src="{{ asset( 'public/images/story/'.$image)}}" width="25px;" height="25px;"/>
                                <?php }?>
                            </div>


                            <div class="form-group">
                                <label for="status">Status*</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="1" <?= (isset($story->status) && ($story->status == 1)) ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= (isset($story->status) && ($story->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary"><?= $story_id == '' ? 'Add' : 'Update' ?></button>
                            <a href="{{ route('admin.story_list') }}" class="btn btn-danger">Cancel</a>

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
<script src="{{ asset('public/admin/plugins/ckeditor/ckeditor.js') }}"></script>
<script>
$(document).ready(function () {
    $("#story_form").validate({
        errorElement: 'span',
        rules: {
            story_name: "required",
        },
        messages: {
            story_name: "Enter story name.",
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
