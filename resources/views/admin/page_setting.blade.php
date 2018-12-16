@include('admin.admin-header')
@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Page Setting</h1>
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
                    @include('admin.admin-error')
                    <!-- /.box-header -->
                    <!-- form start -->

                    {!! Form::open([
                        'url' => ['admin/page_setting/'.$page_data->id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'site_setting',
                    ]) !!}

                        <div class="box-body">


                            <div class="form-group">
                                <label for="Title">Title</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="Enter Page Title" value="<?= (isset($page_data->title) && !empty($page_data->title)) ? $page_data->title : old('title') ?>">
                                <span class="error"><?php if ($errors->has('title')) { echo $errors->first('title');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="page_title">Page Title</label>
                                <input type="text" class="form-control" id="page_title" name="page_title" placeholder="Enter Page Title" value="<?= (isset($page_data->page_title) && !empty($page_data->page_title)) ? $page_data->page_title : old('page_title') ?>">
                                <span class="error"><?php if ($errors->has('page_title')) { echo $errors->first('page_title');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="meta_keyword">Meta Keyword</label>
                                <input type="text" class="form-control" id="meta_keyword" name="meta_keyword" placeholder="Enter Meta Keyword" value="<?= (isset($page_data->meta_keyword) && !empty($page_data->meta_keyword)) ? $page_data->meta_keyword : old('meta_keyword') ?>">
                                <span class="error"><?php if ($errors->has('meta_keyword')) { echo $errors->first('meta_keyword');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="meta_description">Meta Description</label>
                                <input type="text" class="form-control" id="meta_description" name="meta_description" placeholder="Enter Meta Description" value="<?= (isset($page_data->meta_description) && !empty($page_data->meta_description)) ? $page_data->meta_description : old('meta_description') ?>">
                                <span class="error"><?php if ($errors->has('meta_description')) { echo $errors->first('meta_description');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="content">Page Content</label>
                                <textarea rows="6"  class="form-control ckeditor" id="content" name="content" ><?= (isset($page_data->content) && !empty($page_data->content)) ? $page_data->content : old('content') ?></textarea>
                                <span class="error"><?php
                                    if ($errors->has('content')) {
                                        echo $errors->first('content');
                                    }
                                    ?></span>

                            </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Update</button>
                            <a href="{{ route('admin.setting_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#site_setting").validate({
        errorElement: 'span',
        rules: {
            company_title: {
                required: true,
            },
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
