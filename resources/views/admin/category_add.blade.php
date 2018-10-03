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
            <li>
                <a href="{{url('admin/category_list')}}" class="btn btn-primary pull-right">Back to List</a></li>
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
                    'url' => ['admin/category_store', $category_id],
                    'enctype' => 'multipart/form-data',
                    'id' => 'category_form',
                    ]) !!}
                    <div class="box-body">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="category_name">Category Name*</label>
                                <input type="text" class="form-control" id="category_name" name="category_name" placeholder="Enter Event Category name" value="<?= (isset($category->category_name) && !empty($category->category_name)) ? $category->category_name : old('category_name') ?>">
                                <span class="error"><?php
                                    if ($errors->has('category_name')) {
                                        echo $errors->first('category_name');
                                    }
                                    ?></span>
                            </div>

                            <div class="col-md-6">
                                <label for="category_title">Category Title*</label>
                                <input type="text" class="form-control" id="category_title" name="category_title" placeholder="Enter Event Category Title" value="<?= (isset($category->category_title) && !empty($category->category_title)) ? $category->category_title : old('category_title') ?>">
                                <span class="error"><?php
                                    if ($errors->has('category_title')) {
                                        echo $errors->first('category_title');
                                    }
                                    ?></span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="category_name">Category Slug*</label>
                                <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Slug" value="<?= (isset($category->slug) && !empty($category->slug)) ? $category->slug : old('slug') ?>">
                                <span class="error"><?php
                                    if ($errors->has('slug')) {
                                        echo $errors->first('slug');
                                    }
                                    ?></span>
                            </div>

                            <div class="col-md-6">
                                <label for="parent_id">Select Parent Category</label>
                                <select class="form-control" id="status" name="parent_id">
                                    <option value="0" >Parent Category</option>
                                    <?php foreach ($arrCategory as $k => $v) { ?>
                                        <option value="<?= $v->id ?>" <?= (!empty($category->parent_id) && ($v->id == $category->parent_id)) ? 'selected' : ''; ?>><?= $v->category_name ?></option>
                                    <?php } ?>
                                </select>
                            </div>
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

                        <div class="form-group row">
                            <div class='col-md-9'>
                            <label for="mini_icon">Mini Icon<span class="error">* Mini Icon must be in width & height less than (30 X 30), format (jpeg,jpg,png) and max_size(1MB)</span> </label>
                            <input type="file" class="form-control" id="mini_icon" name="mini_icon" >
                            <span class="error"></span>
                            <input type="hidden" name="old_mini_icon" value="<?= (isset($category->mini_icon) && !empty($category->mini_icon)) ? $category->mini_icon : '' ?>" />
                            </div>
                            <div class='col-md-3'>
                            <?php
                            $mini_icon = (isset($category->mini_icon) && !empty($category->mini_icon)) ? $category->mini_icon : '';
                            if (isset($mini_icon) && $mini_icon != "" && file_exists(public_path() . '/images/category/mini_icon/' . $mini_icon)) {
                                ?>
                                <label>Mini Icon </label><br/>
                                <img src="{{ asset( 'images/category/mini_icon/'.$mini_icon)}}"  />
<?php } ?>
                            </div>
                            <br />
                            <span class="error"><?php
                            if ($errors->has('mini_icon')) {
                                echo $errors->first('mini_icon');
                            }
                            ?></span>
                        </div>

                        <div style='clear:both;'></div>

                        <div class="form-group row">
                            <div class='col-md-9'>
                                <label for="popular_icon">Popular Icon<span class="error">* Popular Icon must be in width & height less than (120 X 120), format (jpeg,jpg,png) and max_size(1MB)</span> </label>
                                <input type="file" class="form-control" id="popular_icon" name="popular_icon" >
                                <span class="error"></span>
                                <input type="hidden" name="old_popular_icon" value="<?= (isset($category->popular_icon) && !empty($category->popular_icon)) ? $category->popular_icon : '' ?>" />
                            </div>
                            <div class='col-md-3'>
                            <?php
                            $popular_icon = (isset($category->popular_icon) && !empty($category->popular_icon)) ? $category->popular_icon : '';
                            if (isset($popular_icon) && $popular_icon != "" && file_exists(public_path() . '/images/category/popular_icon/' . $popular_icon)) {
                                ?>
                                <label>Popular Icon </label><br/>
                                <img src="{{ asset( 'images/category/popular_icon/'.$popular_icon)}}" width='50px' height='50px' />
<?php } ?>
                            </div>
                            <br />
                            <span class="error"><?php
                            if ($errors->has('popular_icon')) {
                                echo $errors->first('popular_icon');
                            }
                            ?></span>
                        </div>

                        <div style='clear:both;'></div>

                        <div class="form-group row">
                            <div class='col-md-9'>
                                <label for="image">Category Image</label>
                                <input type="file" class="form-control" id="image" name="image" >
                                <span class="error"></span>
                                <input type="hidden" name="old_image" value="<?= (isset($category->image) && !empty($category->image)) ? $category->image : '' ?>" />
                            </div>
                            <div class='col-md-3'>
                                <?php
                                $image = (isset($category->image) && !empty($category->image)) ? $category->image : '';
                                if (isset($image) && $image != "" && file_exists(public_path() . '/images/category/image/' . $image)) { ?>
                                <label>Image </label><br/>
                                <img src="{{ asset( 'images/category/image/'.$image)}}" width='100px' height='50px'/>
    <?php } ?>
                            </div>
                            <br />
                            <span class="error"><?php
                            if ($errors->has('image')) {
                                echo $errors->first('image');
                            }
                            ?></span>
                        </div>
                        <div style='clear:both;'></div>

                        <div class="form-group row">
                            <div class='col-md-9'>
                                <label for="event_image">Category Event Image<span class="error">* Image must be in width & height less than (50 X 50), format (jpeg,jpg,png) and max_size(1MB)</span></label>
                                <input type="file" class="form-control" id="event_image" name="event_image" >
                                <span class="error"></span>
                                <input type="hidden" name="old_event_image" value="<?= (isset($category->event_image) && !empty($category->event_image)) ? $category->event_image : '' ?>" />
                            </div>
                            <div class='col-md-3'>
                                <?php
                                $event_image = (isset($category->event_image) && !empty($category->event_image)) ? $category->event_image : '';
                                if (isset($event_image) && $event_image != "" && file_exists(public_path() . '/images/category/event_image/' . $event_image)) { ?>
                                <label>Image </label><br/>
                                <img src="{{ asset( 'images/category/event_image/'.$event_image)}}" width='100px' height='50px'/>
    <?php } ?>
                            </div>
                            <br />
                            <span class="error"><?php
                            if ($errors->has('event_image')) {
                                echo $errors->first('event_image');
                            }
                            ?></span>
                        </div>
                        <div style='clear:both;'></div>

                        <div class="form-group row">
                            <div class='col-md-9'>
                                <label for="right_banner">Right Banner<span class="error">* Right Banner must be in width & height less than (200 X 620), format (jpeg,jpg,png) and max_size(1MB)</span></label>
                                <input type="file" class="form-control" id="right_banner" name="right_banner" >
                                <span class="error"></span>
                                <input type="hidden" name="old_right_banner" value="<?= (isset($category->right_banner) && !empty($category->right_banner)) ? $category->right_banner : '' ?>" />
                            </div>
                            <div class='col-md-3'>
                            <?php
                            $right_banner = (isset($category->right_banner) && !empty($category->right_banner)) ? $category->right_banner : '';
                            if (isset($right_banner) && $right_banner != "" && file_exists(public_path() . '/images/category/right_banner/' . $right_banner)) {
                                ?>
                                <label>Right Banner </label><br/>
                                <img src="{{ asset( 'images/category/right_banner/'.$right_banner)}}"  height='50px;'/>
<?php } ?>
                            </div>
                            <br />
                            <span class="error"><?php
                            if ($errors->has('right_banner')) {
                                echo $errors->first('right_banner');
                            }
                            ?></span>
                        </div>
                        <div style='clear:both;'></div>
                        <div class="form-group row">
                            <div class='col-md-9'>
                                <label for="top_banner">Top Banner<span class="error">* Banner must be in width & height less than (1400 X 450), format (jpeg,jpg,png) and max_size(3MB)</span> </label>
                                <input type="file" class="form-control" id="top_banner" name="top_banner" >
                                <span class="error"></span>
                                <input type="hidden" name="old_top_banner" value="<?= (isset($category->top_banner) && !empty($category->top_banner)) ? $category->top_banner : '' ?>" />
                            </div>
                            <div class='col-md-3'>
                            <?php
                            $top_banner = (isset($category->top_banner) && !empty($category->top_banner)) ? $category->top_banner : '';
                            if (isset($top_banner) && $top_banner != "" && file_exists(public_path() . '/images/category/top_banner/' . $top_banner)) {
                                ?>
                                <label>Right Banner </label><br/>
                                <img src="{{ asset( 'images/category/top_banner/'.$top_banner)}}"  height='50px;'/>
                            <?php } ?>
                            </div>
                            <br />
                            <span class="error"><?php
                            if ($errors->has('top_banner')) {
                                echo $errors->first('top_banner');
                            }
                            ?></span>
                        </div>

                        <div style='clear:both;'></div>



                        <div class="form-group">
                            <label for="meta_keyword">Meta Keyword</label>
                            <input type="text" class="form-control" id="meta_keyword" name="meta_keyword" placeholder="" value="<?= (isset($category->meta_keyword) && !empty($category->meta_keyword)) ? $category->meta_keyword : old('meta_keyword') ?>">
                            <span class="error"><?php
                                if ($errors->has('meta_keyword')) {
                                    echo $errors->first('meta_keyword');
                                }
                                ?></span>
                        </div>

                        <div class="form-group">
                            <label for="meta_description">Meta Description</label>
                            <input type="text" class="form-control" id="meta_description" name="meta_description" placeholder="" value="<?= (isset($category->meta_description) && !empty($category->meta_description)) ? $category->meta_description : old('meta_description') ?>">
                            <span class="error"><?php
                                if ($errors->has('meta_description')) {
                                    echo $errors->first('meta_description');
                                }
                                ?></span>
                        </div>

                        <div class="form-group">
                            <label for="page_title">Page Title</label>
                            <input type="text" class="form-control" id="page_title" name="page_title" placeholder="" value="<?= (isset($category->page_title) && !empty($category->page_title)) ? $category->page_title : old('page_title') ?>">
                            <span class="error"><?php
                                if ($errors->has('page_title')) {
                                    echo $errors->first('page_title');
                                }
                                ?></span>
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
<script src="{{asset('admin/plugins/ckeditor/ckeditor.js') }}"></script>
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
