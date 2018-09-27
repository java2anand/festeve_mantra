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
                            <div class="form-group row">
                                <div class='col-md-6'>
                                <label for="story_name">Story Name*</label>
                                <input type="text" class="form-control" id="story_name" name="story_name" placeholder="Enter Story name" value="<?= (isset($story->story_name) && !empty($story->story_name)) ? $story->story_name : old('story_name') ?>">
                                <span class="error"><?php
                                    if ($errors->has('story_name')) {
                                        echo $errors->first('story_name');
                                    }
                                    ?></span>

                                </div>
                                <div class='col-md-6'>
                                    <label for="category_id">Select Category</label>
                                    <select class="form-control" id="category_id" name="category_id">

                                        <?php foreach ($arrCategory as $k => $v) { ?>
                                            <option value="<?= $v->id ?>" <?= (!empty($event->event_category) && ($v->id == $event->event_category)) ? 'selected' : ''; ?>><?= ($v->parent_id == 0) ? $v->category_name : '>>' . $v->category_name ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class='form-group'>
                                <label for="narrator_name">Story Slug*</label>
                                <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                <span class="error"><?php
                                    if ($errors->has('narrator_name')) {
                                        echo $errors->first('narrator_name');
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
                                <label for="image">Story Image<span class="error">* Image must be in width & height less than (360 X 210), format (jpeg,jpg,png) and max_size(3MB)</span></label>
                                <input type="file" class="form-control" id="image" name="image" >
                                <span class="error"></span>
                                <input type="hidden" name="old_image" value="<?= (isset($story->image) && !empty($story->image)) ? $story->image: '' ?>" />

                                <?php
                                    $image = (isset($story->image) && !empty($story->image)) ? $story->image: '';
                                    if (!empty($image) && file_exists( public_path() . '/images/story/' . $image)) {?>
                                        <img src="{{ asset( 'images/story/'.$image)}}" width="200px;" height="80px;"/>
                                <?php }?>
                            </div>

                            <div class="form-group row">
                                <div class='col-md-6'>
                                <label for="story_name">Page Title</label>
                                <input type="text" class="form-control" id="story_name" name="story_name" placeholder="Enter Story name" value="<?= (isset($story->story_name) && !empty($story->story_name)) ? $story->story_name : old('story_name') ?>">
                                <span class="error"><?php
                                    if ($errors->has('story_name')) {
                                        echo $errors->first('story_name');
                                    }
                                    ?></span>

                                </div>
                                <div class='col-md-6'>
                                    <label for="category_id">Meta Keyword</label>
                                    <select class="form-control" id="category_id" name="category_id">

                                        <?php foreach ($arrCategory as $k => $v) { ?>
                                            <option value="<?= $v->id ?>" <?= (!empty($event->event_category) && ($v->id == $event->event_category)) ? 'selected' : ''; ?>><?= ($v->parent_id == 0) ? $v->category_name : '>>' . $v->category_name ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="description">Meta Description</label>
                                <textarea rows="6"  class="form-control" id="description" name="description" ><?= (isset($story->description) && !empty($story->description)) ? $story->description : old('description') ?></textarea>
                                <span class="error"><?php
                                    if ($errors->has('description')) {
                                        echo $errors->first('description');
                                    }
                                    ?></span>

                            </div>

                            <div class="form-group row">
                                <div class='col-md-6'>
                                    <label for="narrator_name">Narrator Name*</label>
                                    <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('narrator_name')) {
                                            echo $errors->first('narrator_name');
                                        }
                                        ?></span>
                                </div>
                                <div class='col-md-6'>
                                    <label for="narrator_name">About Narrator*</label>
                                    <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('narrator_name')) {
                                            echo $errors->first('narrator_name');
                                        }
                                        ?></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class='col-md-6'>
                                    <label for="narrator_name">Facebook Id*</label>
                                    <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('narrator_name')) {
                                            echo $errors->first('narrator_name');
                                        }
                                        ?></span>
                                </div>
                                <div class='col-md-6'>
                                    <label for="narrator_name">Twitter Id*</label>
                                    <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('narrator_name')) {
                                            echo $errors->first('narrator_name');
                                        }
                                        ?></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class='col-md-6'>
                                    <label for="narrator_name">Linked In Id*</label>
                                    <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('narrator_name')) {
                                            echo $errors->first('narrator_name');
                                        }
                                        ?></span>
                                </div>
                                <div class='col-md-6'>
                                    <label for="narrator_name">Instagram Id*</label>
                                    <input type="text" class="form-control" id="narrator_name" name="narrator_name" placeholder="Enter Narrator name" value="<?= (isset($story->narrator_name) && !empty($story->narrator_name)) ? $story->narrator_name : old('narrator_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('narrator_name')) {
                                            echo $errors->first('narrator_name');
                                        }
                                        ?></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="narrator_image">Narrator Image<span class="error">* Image must be in width & height less than (150 X 150), format (jpeg,jpg,png) and max_size(2MB)</span></label>
                                <input type="file" class="form-control" id="narrator_image" name="narrator_image" >
                                <span class="error"></span>
                                <input type="hidden" name="old_narrator_image" value="<?= (isset($story->narrator_image) && !empty($story->narrator_image)) ? $story->narrator_image: '' ?>" />

                                <?php
                                    $narrator_image = (isset($story->narrator_image) && !empty($story->narrator_image)) ? $story->narrator_image: '';
                                    if (!empty($narrator_image) && file_exists( public_path() . '/images/story/narrator/' . $narrator_image)) {?>
                                        <img src="{{ asset( 'images/story/narrator/'.$narrator_image)}}" width="100px;" height="100px;"/>
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
<script src="{{asset('admin/plugins/ckeditor/ckeditor.js') }}"></script>
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
