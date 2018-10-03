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
                        @include('admin.admin-error')
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
                                        ?>
                                    </span>
                                </div>

                                <div class='col-md-6'>
                                    <label for="slug">Story Slug*</label>
                                    <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Slug" value="<?= (isset($story->slug) && !empty($story->slug)) ? $story->slug : old('slug') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('slug')) {
                                            echo $errors->first('slug');
                                        }
                                        ?></span>
                                </div>
                            </div>

                            <div class='form-group row'>
                                <div class='col-md-6'>
                                    <label for="category_id">Select Category</label>
                                    <select class="form-control" id="category_id" name="category_id">

                                        <?php foreach ($arrCategory as $k => $c) { ?>
                                            <option value="<?= $c->id ?>" <?= (!empty($story->category_id) && ($c->id == $story->category_id)) ? 'selected' : ''; ?>><?= $c->category_name ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                                <div class='col-md-6'>
                                    <label for="author_id">Select Author</label>
                                    <select class="form-control" id="author_id" name="author_id">

                                        <?php foreach ($arrAuthor as $k => $a) { ?>
                                            <option value="<?= $a->id ?>" <?= (!empty($story->author_id) && ($a->id == $story->author_id)) ? 'selected' : ''; ?>><?= $a->name ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
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

                            <div class="form-group">

                                <label for="page_title">Page Title</label>
                                <input type="text" class="form-control" id="page_title" name="page_title" placeholder="Enter Page Title" value="<?= (isset($story->page_title) && !empty($story->page_title)) ? $story->page_title : old('page_title') ?>">
                                <span class="error"><?php
                                    if ($errors->has('page_title')) {
                                        echo $errors->first('page_title');
                                    }
                                    ?></span>


                            </div>

                            <div class="form-group">
                                <label for="meta_keyword">Meta Keyword</label>
                                <input type="text" class="form-control" id="meta_keyword" name="meta_keyword" placeholder="Enter Meta Keyword" value="<?= (isset($story->meta_keyword) && !empty($story->meta_keyword)) ? $story->meta_keyword : old('meta_keyword') ?>">
                                <span class="error"><?php
                                    if ($errors->has('meta_keyword')) {
                                        echo $errors->first('meta_keyword');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group">
                                <label for="meta_description">Meta Description</label>
                                <input type="text" class="form-control" id="meta_description" name="meta_description" placeholder="Enter Meta Description" value="<?= (isset($story->meta_description) && !empty($story->meta_description)) ? $story->meta_description : old('meta_description') ?>">
                                <span class="error"><?php
                                    if ($errors->has('meta_description')) {
                                        echo $errors->first('meta_description');
                                    }
                                    ?></span>
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
