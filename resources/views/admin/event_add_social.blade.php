@include('admin.admin-header')
@include('admin.admin-sidebar')
<script src="{{asset('admin/plugins/ckeditor/ckeditor.js') }}"></script>
<?php $event_id = (isset($event->id) && !empty($event->id)) ? $event->id : ''; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?= $event_id == '' ? 'Add' : 'Edit' ?> Event</h1>
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
                    <!-- event nav bar -->
                    @include('admin.event-navbar')

                    <!-- form start -->
                    {!! Form::open([
                    'url' => ['admin/event_add_social', $event_id],
                    'id' => 'event_add_social_form',
                    ]) !!}

                    <div class="box-body">
                        <div class="form-group col-sm-6">
                            <label for="ticket_url">Ticket Url*</label>
                            <input type="text" class="form-control" id="ticket_url" name="ticket_url" placeholder="Enter ticket url" value="<?= (isset($event->ticket_url) && !empty($event->ticket_url)) ? $event->ticket_url : old('ticket_url') ?>">
                            <span class="error"><?php if ($errors->has('ticket_url')) {
    echo $errors->first('ticket_url');
} ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="website_url">Website Url</label>
                            <input type="text" class="form-control" id="website_url" name="website_url" placeholder="Enter website url" value="<?= (isset($event->website_url) && !empty($event->website_url)) ? $event->website_url : old('website_url') ?>">
                            <span class="error"><?php if ($errors->has('website_url')) {
    echo $errors->first('website_url');
} ?></span>
                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="facebook_id">Facebook Id</label>
                            <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($event->facebook_id) && !empty($event->facebook_id)) ? $event->facebook_id : old('facebook_id') ?>">
                            <span class="error"><?php if ($errors->has('facebook_id')) {
    echo $errors->first('facebook_id');
} ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="twitter_id">Twitter Id</label>
                            <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($event->twitter_id) && !empty($event->twitter_id)) ? $event->twitter_id : old('twitter_id') ?>">
                            <span class="error"><?php if ($errors->has('twitter_id')) {
    echo $errors->first('twitter_id');
} ?></span>
                        </div>
                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="linked_id">Linkedin Id</label>
                            <input type="text" class="form-control" id="linked_id" name="linked_id" placeholder="Enter LinkedIn Id" value="<?= (isset($event->linked_id) && !empty($event->linked_id)) ? $event->linked_id : old('linked_id') ?>">
                            <span class="error"><?php if ($errors->has('linked_id')) {
    echo $errors->first('linked_id');
} ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="instagram_id">Instagram Id</label>
                            <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($event->instagram_id) && !empty($event->instagram_id)) ? $event->instagram_id : old('instagram_id') ?>">
                            <span class="error"><?php if ($errors->has('instagram_id')) {
    echo $errors->first('instagram_id');
} ?></span>
                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="googleplus_id">Googleplus Id</label>
                            <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($event->googleplus_id) && !empty($event->googleplus_id)) ? $event->googleplus_id : old('googleplus_id') ?>">
                            <span class="error"><?php if ($errors->has('googleplus_id')) {
    echo $errors->first('googleplus_id');
} ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="youtube_id">Youtube Id</label>
                            <input type="text" class="form-control" id="youtube_id" name="youtube_id" placeholder="Enter Youtube Id" value="<?= (isset($event->youtube_id) && !empty($event->youtube_id)) ? $event->youtube_id : old('youtube_id') ?>">
                            <span class="error"><?php if ($errors->has('youtube_id')) {
    echo $errors->first('youtube_id');
} ?></span>
                        </div>

                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <a href="{{ route('admin.event_add_schedule',$event_id) }}" class="btn btn-danger">Back</a>
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="submit" name='submit' value='go' class="btn btn-primary">Save & Go To Address</button>
                        <a href="{{ route('admin.event_list') }}" class="btn btn-danger">Cancel</a>

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

<script>
$(document).ready(function () {
    $('#event_add_social_form').validate({
        errorElement: 'span',
        rules: {

        },
        messages: {

        },
        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });
});
</script>
