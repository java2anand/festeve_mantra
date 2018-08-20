@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $category_id = (isset($category->id) && !empty($category->id)) ? $category->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $category_id == '' ? 'Add' : 'Edit' ?> Event Category</h1>
        <ol class="breadcrumb">
		<!--
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
		-->
		<a href="{{url('admin/category_list')}}" class="btn btn-primary pull-right">Back to List</a>
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
                        'url' => ['admin/category_store', $category_id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'category_form',
                    ]) !!}
                        <div class="box-body">
                            <div class="form-group">
                                <label for="category_name">Category Name*</label>
                                <input type="text" class="form-control" id="category_name" name="category_name" placeholder="Enter Event Category name" value="<?= (isset($category->category_name) && !empty($category->category_name)) ? $category->category_name : old('category_name') ?>">
                                <span class="error"><?php
                                    if ($errors->has('category_name')) {
                                        echo $errors->first('category_name');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group">
                                <label for="category_name">Category Slug*</label>
                                <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Slug" value="<?= (isset($category->slug) && !empty($category->slug)) ? $category->slug : old('slug') ?>">
                                <span class="error"><?php
                                    if ($errors->has('slug')) {
                                        echo $errors->first('slug');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group">
                                <label for="parent_id">Select Parent Category</label>
                                <select class="form-control" id="status" name="parent_id">
                                    <option value="0" >Parent Category</option>
                                    <?php foreach ($arrCategory as $k => $v) { ?>
                                        <option value="<?= $v->id ?>" <?= (!empty($category->parent_id) && ($v->id == $category->parent_id)) ? 'selected' : ''; ?>><?= $v->category_name ?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($category->description) && !empty($category->description)) ? $category->description : old('description') ?></textarea>
                                <span class="error"><?php
                                    if ($errors->has('description')) {
                                        echo $errors->first('description');
                                    }
                                    ?></span>

                            </div>

                            <div class="form-group">
                                <label for="mini_icon">Category Mini Icon</label>
                                <input type="file" class="form-control" id="mini_icon" name="mini_icon" >
                                <span class="error"></span>
                                <input type="hidden" name="old_mini_icon" value="<?= (isset($category->mini_icon) && !empty($category->mini_icon)) ? $category->mini_icon: '' ?>" />

                                <?php
                                    $mini_icon = (isset($category->mini_icon) && !empty($category->mini_icon)) ? $category->mini_icon: '';
                                    if (isset($mini_icon) && $mini_icon!="" && file_exists( public_path() . '/images/category/mini_icon/' . $mini_icon)) {?>
                                        <img src="{{ asset( 'public/images/category/mini_icon/'.$mini_icon)}}" />
                                <?php }?>
                            </div>
							
							<div class="form-group">
                                <label for="icon">Category Icon</label>
                                <input type="file" class="form-control" id="icon" name="icon" >
                                <span class="error"></span>
                                <input type="hidden" name="old_icon" value="<?= (isset($category->icon) && !empty($category->icon)) ? $category->icon: '' ?>" />

                                <?php
                                    $icon = (isset($category->icon) && !empty($category->icon)) ? $category->icon: '';
                                    if (isset($icon) && $icon!="" && file_exists( public_path() . '/images/category/thumb/' . $icon)) {?>
                                        <img src="{{ asset( 'public/images/category/thumb/'.$icon)}}" />
                                <?php }?>
                            </div>

                            <div class="form-group">
                                <label for="right_banner">Right Banner</label>
                                <input type="file" class="form-control" id="right_banner" name="right_banner" >
                                <span class="error"></span>
                                <input type="hidden" name="old_right_banner" value="<?= (isset($category->right_banner) && !empty($category->right_banner)) ? $category->right_banner: '' ?>" />

                                <?php
                                    $right_banner = (isset($category->right_banner) && !empty($category->right_banner)) ? $category->right_banner: '';
                                    if (isset($right_banner) && $right_banner!="" && file_exists( public_path() . '/images/category/right_banner/' . $right_banner)) {?>
                                        <img src="{{ asset( 'public/images/category/right_banner/'.$right_banner)}}"  height='50px;'/>
                                <?php }?>
                            </div>

                            <div class="form-group">
                                <label for="top_banner">Top Banner</label>
                                <input type="file" class="form-control" id="top_banner" name="top_banner" >
                                <span class="error"></span>
                                <input type="hidden" name="old_top_banner" value="<?= (isset($category->top_banner) && !empty($category->top_banner)) ? $category->top_banner: '' ?>" />

                                <?php
                                    $top_banner = (isset($category->top_banner) && !empty($category->top_banner)) ? $category->top_banner: '';
                                    if (isset($top_banner) && $top_banner!="" && file_exists( public_path() . '/images/category/top_banner/' . $top_banner)) {?>
                                        <img src="{{ asset( 'public/images/category/top_banner/'.$top_banner)}}"  height='50px;'/>
                                <?php }?>
                            </div>

                            <div class="form-group">
                                <label for="category_slug">Status*</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="1" <?= (isset($eventtype->status) && ($eventtype->status == 1)) ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= (isset($eventtype->status) && ($eventtype->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary"><?= $category_id == '' ? 'Add' : 'Update' ?></button>
                            <a href="{{ route('admin.category_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#category_form").validate({
        errorElement: 'span',
        rules: {
            category_name: "required",
            slug: "required",
        },
        messages: {
            category_name: "Enter category name.",
            slug: "Enter slug."
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
