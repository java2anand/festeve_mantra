@include('admin.admin-header')
@include('admin.admin-sidebar')
<?php $event_organiser_id = (isset($eventorganiser->id) && !empty($eventorganiser->id)) ? $eventorganiser->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $event_organiser_id == '' ? 'Add' : 'Edit' ?> Event Organiser</h1>
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
                    'url' => ['admin/eventorganiser_store', $event_organiser_id],
                    'id' => 'eventorganiser_form'
                    ]) !!}

                    <div class="box-body">
                        <div class="form-group">
                            <label for="organiser_title">Organiser Title*</label>
                            <input type="text" class="form-control" id="organiser_title" name="organiser_title" placeholder="Enter Event Organiser Title" value="<?= (isset($eventorganiser->organiser_title) && !empty($eventorganiser->organiser_title)) ? $eventorganiser->organiser_title : old('organiser_title') ?>">
                            <span class="error"><?php if ($errors->has('organiser_title')) {
    echo $errors->first('organiser_title');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="name">Organiser Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Organiser Name" value="<?= (isset($eventorganiser->name) && !empty($eventorganiser->name)) ? $eventorganiser->name : old('name') ?>">
                            <span class="error"><?php if ($errors->has('name')) {
    echo $errors->first('name');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="facebook_id">Facebook Id</label>
                            <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($eventorganiser->facebook_id) && !empty($eventorganiser->facebook_id)) ? $eventorganiser->facebook_id : old('facebook_id') ?>">
                            <span class="error"><?php if ($errors->has('facebook_id')) {
    echo $errors->first('facebook_id');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="twitter_id">Twitter Id</label>
                            <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($eventorganiser->twitter_id) && !empty($eventorganiser->twitter_id)) ? $eventorganiser->twitter_id : old('twitter_id') ?>">
                            <span class="error"><?php if ($errors->has('twitter_id')) {
    echo $errors->first('twitter_id');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="linked_id">Linked Id</label>
                            <input type="text" class="form-control" id="linked_id" name="linked_id" placeholder="Enter LinkedIn Id" value="<?= (isset($eventorganiser->linked_id) && !empty($eventorganiser->linked_id)) ? $eventorganiser->linked_id : old('linked_id') ?>">
                            <span class="error"><?php if ($errors->has('linked_id')) {
    echo $errors->first('linked_id');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="instagram_id">Instagram Id</label>
                            <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($eventorganiser->instagram_id) && !empty($eventorganiser->instagram_id)) ? $eventorganiser->instagram_id : old('instagram_id') ?>">
                            <span class="error"><?php if ($errors->has('instagram_id')) {
    echo $errors->first('instagram_id');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="googleplus_id">Googleplus Id</label>
                            <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($eventorganiser->googleplus_id) && !empty($eventorganiser->googleplus_id)) ? $eventorganiser->googleplus_id : old('googleplus_id') ?>">
                            <span class="error"><?php if ($errors->has('descgoogleplus_idription')) {
    echo $errors->first('googleplus_id');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="category_slug">Description</label>
                            <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($eventorganiser->description) && !empty($eventorganiser->description)) ? $eventorganiser->description : old('description') ?></textarea>
                            <span class="error"><?php if ($errors->has('description')) {
    echo $errors->first('description');
} ?></span>
                        </div>

                        <div class="form-group">
                            <label for="category_slug">Status*</label>
                            <select class="form-control" id="status" name="status">
                                <option value="1" <?= (isset($eventorganiser->status) && ($eventorganiser->status == 1)) ? 'selected' : '' ?>>Active</option>
                                <option value="0" <?= (isset($eventorganiser->status) && ($eventorganiser->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                            </select>
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary"><?= $event_organiser_id == '' ? 'Add' : 'Update' ?></button>
                        <a href="{{ route('admin.eventorganiser_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#eventorganiser_form").validate({
        errorElement: 'span',
        rules: {
            name: "required",
            organiser_title: "required"
        },
        messages: {
            name: "Enter organiser name.",
            organiser_title: "Enter organiser title"
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
