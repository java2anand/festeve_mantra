@include('admin.admin-header')
@include('admin.admin-sidebar')
<link rel="stylesheet" href="{{ asset('public/admin/plugins/datepicker/bootstrap-datepicker.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/admin/plugins/timepicker/bootstrap-timepicker.min.css') }}">
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
                    'url' => ['admin/event_store', $event_id],
                    'id' => 'event_form',
                    'enctype' => 'multipart/form-data',
                    ]) !!}

                    <div class="box-body">
                        <div class="form-group col-sm-12">
                            <label for="title">Title*</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title" value="<?= (isset($event->title) && !empty($event->title)) ? $event->title : old('title') ?>">
                            <span class="error"><?php
                                if ($errors->has('title')) {
                                    echo $errors->first('title');
                                }
                                ?></span>
                        </div>

                        <div class="form-group col-sm-12">
                            <label for="slug">Slug*</label>
                            <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Slug" value="<?= (isset($event->slug) && !empty($event->slug)) ? $event->slug : old('slug') ?>">
                            <span class="error"><?php
                                if ($errors->has('slug')) {
                                    echo $errors->first('slug');
                                }
                                ?></span>
                        </div>

                        <div class="form-group col-sm-12">
                            <label for="category_id">Select Category</label>
                            <select class="form-control" id="category_id" name="category_id">

                                <?php foreach ($arrCategory as $k => $v) { ?>
                                    <option value="<?= $v->id ?>" <?= (!empty($event->event_category) && ($v->id == $event->event_category)) ? 'selected' : ''; ?>><?= ($v->parent_id == 0) ? $v->category_name : '>>'.$v->category_name ?></option>
                                <?php } ?>
                            </select>
                        </div>

                        <div class="form-group col-sm-12">
                            <label for="event_type_id">Select Event Type</label>
                            <select class="form-control" id="event_type_id" name="event_type_id">

                                <?php foreach ($arrEventType as $k => $v) { ?>
                                    <option value="<?= $v->id ?>" <?= (!empty($event->event_type) && ($v->id == $event->event_type)) ? 'selected' : ''; ?>><?= $v->name ?></option>
                                <?php } ?>
                            </select>
                        </div>

                        <div class="form-group col-sm-3">
                            <div class="form-group">
                                <label for="start_date">Start Date*</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right datepicker" id="start_date" name="start_date" placeholder="Enter Start Date" value="<?= (isset($event->start_date) && !empty($event->start_date)) ? date('d-m-Y', strtotime($event->start_date)) : old('start_date') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('start_date')) {
                                            echo $errors->first('start_date');
                                        }
                                        ?></span>
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>

                        <div class="form-group col-sm-3">
                            <label for="end_date">End Date*</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right datepicker" id="end_date" name="end_date" placeholder="Enter End Date" value="<?= (isset($event->end_date) && !empty($event->end_date)) ? date('d-m-Y', strtotime($event->end_date)) : old('end_date') ?>">
                                <span class="error"><?php
                                    if ($errors->has('end_date')) {
                                        echo $errors->first('end_date');
                                    }
                                    ?></span>
                            </div>
                            <!-- /.input group -->
                        </div>

                        <div class="form-group col-sm-3">
                            <label for="start_time">Start Time*</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-clock-o"></i>
                                </div>
                                <input type="text" class="form-control timepicker" id="start_time" name="start_time" placeholder="Enter Start Time" value="<?= (isset($event->start_time) && !empty($event->start_time)) ? $event->start_time : old('start_time') ?>">
                                <span class="error"><?php
                                    if ($errors->has('start_time')) {
                                        echo $errors->first('start_time');
                                    }
                                    ?></span>

                            </div>
                            <!-- /.input group -->
                        </div>

                        <div class="form-group col-sm-3">
                            <label for="end_time">End Time*</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-clock-o"></i>
                                </div>
                                <input type="text" class="form-control timepicker" id="end_time" name="end_time" placeholder="Enter End Time" value="<?= (isset($event->end_time) && !empty($event->end_time)) ? $event->end_time : old('end_time') ?>">
                                <span class="error"><?php
                                    if ($errors->has('end_time')) {
                                        echo $errors->first('end_time');
                                    }
                                    ?></span>

                            </div>
                            <!-- /.input group -->
                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="event_image">Image*</label>
                            <input type="file" class="form-control" id="event_image" name="event_image" >
                            <span class="error"><?php
                                if ($errors->has('event_image')) {
                                    echo $errors->first('event_image');
                                }
                                ?></span>
                            <input type="hidden" name="old_event_image" value="<?= (isset($event->event_image) && !empty($event->event_image)) ? $event->event_image : '' ?>" />

                            <?php
                            $image = (isset($event->event_image) && !empty($event->event_image)) ? $event->event_image : '';
                            if (file_exists(public_path() . '/images/event/thumb/' . $image)) {
                                ?>
                                <img src="{{ asset( 'public/images/event/thumb/'.$image)}}" />
                            <?php } ?>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="end_time">Document*</label>
                            <input type="file" class="form-control" id="end_time" name="end_time" placeholder="Enter End Time" value="<?= (isset($event->end_time) && !empty($event->end_time)) ? $event->end_time : old('end_time') ?>">
                            <span class="error"><?php
                                if ($errors->has('end_time')) {
                                    echo $errors->first('end_time');
                                }
                                ?></span>
                        </div>

                        <div style="clear:both;"></div>
						<!--Code for Add Event Top banner -->
							<div class="form-group col-sm-12">
                            <label for="event_top_banner">Top Banner*</label>
                            <input type="file" class="form-control" id="event_top_banner" name="event_top_banner" >
                            <span class="error"><?php
                                if ($errors->has('event_top_banner')) {
                                    echo $errors->first('event_top_banner');
                                }
                                ?></span>
                            <input type="hidden" name="old_event_top_banner" value="<?= (isset($event->event_top_banner) && !empty($event->event_top_banner)) ? $event->event_top_banner : '' ?>" />

                            <?php
                            $image = (isset($event->event_top_banner) && !empty($event->event_top_banner)) ? $event->event_top_banner : '';
                            if (file_exists(public_path() . '/images/event/top_banner/' . $image)) {
                                ?>
                                <img src="{{ asset( 'public/images/event/top_banner/'.$image)}}" />
                            <?php } ?>
                        </div>
						<!-- Code for Add event Top Banner ends here -->
                        <div class="form-group col-sm-12">
                            <label for="short_description">Short Description</label>
                            <textarea rows="6"  class="form-control ckeditor" id="short_description" name="short_description" ><?= (isset($event->short_description) && !empty($event->short_description)) ? $event->short_description : old('short_description') ?></textarea>
                            <span class="error"><?php
                                if ($errors->has('short_description')) {
                                    echo $errors->first('short_description');
                                }
                                ?></span>

                        </div>

                        <div class="form-group col-sm-12">
                            <label for="description">Description</label>
                            <textarea rows="6"  class="form-control ckeditor" id="description" name="description" ><?= (isset($event->description) && !empty($event->description)) ? $event->description : old('description') ?></textarea>
                            <span class="error"><?php
                                if ($errors->has('description')) {
                                    echo $errors->first('description');
                                }
                                ?></span>

                        </div>


                        <div class="form-group col-sm-12">
                            <label for="category_slug">Status*</label>
                            <select class="form-control" id="status" name="status">
                                <option value="1" <?= (isset($eventtype->status) && ($eventtype->status == 1)) ? 'selected' : '' ?>>Active</option>
                                <option value="0" <?= (isset($eventtype->status) && ($eventtype->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                            </select>
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="submit" name='submit' value='go' class="btn btn-primary">Save & Go To Schedule</button>
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
<script src="{{ asset('public/admin/plugins/ckeditor/ckeditor.js') }}"></script>
<script src="{{ asset('public/admin/plugins/datepicker/bootstrap-datepicker.min.js') }}"></script>
<script src="{{ asset('public/admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>

<script>
$(document).ready(function () {
    //timepicker
    $('.timepicker').timepicker({
        showInputs: false
    });


    var date = new Date();
    var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
    var end = new Date(date.getFullYear(), date.getMonth(), date.getDate());
    $("#start_date").datepicker({
        format: "dd-mm-yyyy",
        todayHighlight: true,
        startDate: today,
        //endDate: end,
        autoclose: true
    }).on('changeDate', function (selected) {
        var minDate = new Date(selected.date.valueOf());
        $('#end_date').datepicker('setStartDate', minDate);
    });

    $("#end_date").datepicker({
        format: "dd-mm-yyyy",
        todayHighlight: true,
        startDate: today,
        autoclose: true
    })
    .on('changeDate', function (selected) {
        var minDate = new Date(selected.date.valueOf());
        $('#start_date').datepicker('setEndDate', minDate);
    });


    $("#event_form").validate({
        errorElement: 'span',
        rules: {
            title: "required",
            slug: "required",
        },
        messages: {
            title: "Enter event title.",
            slug: "Enter slug."
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
