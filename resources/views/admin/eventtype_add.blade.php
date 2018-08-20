@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $event_type_id = (isset($eventtype->id) && !empty($eventtype->id)) ? $eventtype->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $event_type_id == '' ? 'Add' : 'Edit' ?> Event Type</h1>
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
                        'url' => ['admin/eventtype_store', $event_type_id],
                        'id' => 'eventtype_form',
                    ]) !!}

                        <div class="box-body">
                            <div class="form-group">
                                <label for="name">Type Name*</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Event Type name" value="<?= (isset($eventtype->name) && !empty($eventtype->name)) ? $eventtype->name : old('name') ?>">
                                <span class="error"><?php if ($errors->has('name')) {
    echo $errors->first('name');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="slug">Slug*</label>
                                <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Slug" value="<?= (isset($eventtype->slug) && !empty($eventtype->slug)) ? $eventtype->slug : old('slug') ?>">
                                <span class="error"><?php if ($errors->has('slug')) {
    echo $errors->first('slug');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="description">Description*</label>
                                <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($eventtype->description) && !empty($eventtype->description)) ? $eventtype->description : old('description') ?></textarea>
                                <span class="error"><?php if ($errors->has('description')) {
    echo $errors->first('description');
} ?></span>

                            </div>

                            <div class="form-group">
                                <label for="category_slug">Status*</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="1" <?= (isset($eventtype->status) && ($eventtype->status == 1)) ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= (isset($eventtype->status) && ($eventtype->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary"><?= $event_type_id == '' ? 'Add' : 'Update' ?></button>
                            <a href="{{ route('admin.eventtype_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#eventtype_form").validate({
        errorElement: 'span',
        rules: {
            name: "required",
            slug: "required",
            description: "required"
        },
        messages: {
            name: "Enter event type name.",
            slug: "Enter slug.",
            description: "Enter description"
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
