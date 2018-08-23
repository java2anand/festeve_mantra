@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $newsletters_id = (isset($newsletters->id) && !empty($newsletters->id)) ? $newsletters->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $newsletters_id == '' ? 'Add' : 'Edit' ?> Newsletter</h1>
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
                        'url' => ['admin/newsletter_store', $newsletters_id],
                        'id' => 'newsletter_form',
                        ]) !!}

                        <div class="box-body">
                            <div class="form-group">
                                <label for="email">Email*</label>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email" value="<?= (isset($newsletters->email) && !empty($newsletters->email)) ? $newsletters->email : old('email') ?>">
                                <span class="error"><?php if ($errors->has('email')) {
    echo $errors->first('email');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="category_slug">Status*</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="1" <?= (isset($newsletters->status) && ($newsletters->status == 1)) ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= (isset($newsletters->status) && ($newsletters->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary"><?= $newsletters_id == '' ? 'Add' : 'Update' ?></button>
                            <a href="{{ route('admin.newsletter_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#newsletter_form").validate({
        errorElement: 'span',
        rules: {
            email: {
                required: true,
                email: true
            },
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
