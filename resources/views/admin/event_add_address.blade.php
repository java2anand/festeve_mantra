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

                    @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                        @if(Session::has('alert-' . $msg))
                            <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                        @endif
                    @endforeach

                    <!-- /.box-header -->
                    <!-- event nav bar -->
                    @include('admin.event-navbar')

                    <!-- form start -->
                    {!! Form::open([
                    'method' => 'post',
                    'url' => ['admin/event_add_address', $event_id],

                    'id' => 'event_add_address_form',
                    ]) !!}

                    <div class="box-body">
                        <div class="form-group col-sm-6">
                            <label for="event_location	">Event Location</label>
                            <input type="text" class="form-control" id="event_location" name="event_location" placeholder="Enter event location" value="<?= (isset($event->event_location) && !empty($event->event_location)) ? $event->event_location : old('event_location') ?>">
                            <span class="error"><?php if ($errors->has('event_location')) { echo $errors->first('event_location'); } ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="event_address">Event Address</label>
                            <input type="text" class="form-control" id="event_address" name="event_address" placeholder="Enter event Address" value="<?= (isset($event->event_address) && !empty($event->event_address)) ? $event->event_address : old('event_address') ?>">
                            <span class="error"><?php if ($errors->has('event_address')) {
    echo $errors->first('event_address');
} ?></span>
                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="country">Event Country</label>
                            <input type="text" class="form-control" id="country" name="country" placeholder="Enter event Country" disabled value="India">
                            <span class="error"><?php if ($errors->has('country')) {
    echo $errors->first('country');
} ?></span>
                        </div>


                        <div class="form-group col-sm-6">
                            <label for="state">Event State</label>
                            <select class="form-control" name="state" id="state">
                                <option value="">Select State</option>
                                <?php
                                if (count($state_list) > 0) {
                                    foreach ($state_list as $state) {
                                        ?>
                                        <option value="<?= $state->state_id; ?>" <?= (isset($event->state) && $event->state == $state->state_id) ? "selected" : ""; ?>><?= $state->state_name ; ?></option>
                                        <?php
                                    }
                                }
                                ?>
                            </select>
                            <span class="error"><?php if ($errors->has('state')) {
    echo $errors->first('state');
} ?></span>

                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="city">Event City</label>
                            <select class="form-control" name="city" id="city">
                                <option value="">Select City</option>
                                <?php
                                if (count($city_list) > 0) {
                                    foreach ($city_list as $city) {
                                        ?>
                                        <option value="<?= $city->city_id; ?>" <?= (isset($event->city) && $event->city == $city->city_id) ? "selected" : ""; ?>><?= $city->city_name; ?></option>
                                        <?php
                                    }
                                }
                                ?>
                            </select>
                            <span class="error"><?php if ($errors->has('city')) {
    echo $errors->first('city');
} ?></span>

                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <a href="{{ route('admin.event_add_social',$event_id) }}" class="btn btn-danger">Back</a>
                        <button type="submit" name='submit' value='save' class="btn btn-primary">Save</button>
                        <button type="submit" name='submit' value='go' class="btn btn-primary">Save & Go To List</button>
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
    $('#event_add_address_form').validate({
        errorElement: 'span',
        rules: {
            address: {
                required: true
            },
        },
        messages: {
            address: {
                required: "Enter Address"
            },
        },
        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });
});

</script>
