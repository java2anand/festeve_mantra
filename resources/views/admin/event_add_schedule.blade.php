@include('admin.admin-header')
@include('admin.admin-sidebar')
<link rel="stylesheet" href="{{asset('admin/plugins/datepicker/bootstrap-datepicker.min.css') }}">
<link rel="stylesheet" href="{{asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}">
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
                    'url' => ['admin/event_add_schedule', $event_id],
                    'id' => 'event_add_schedule_form',
                    'enctype' => 'multipart/form-data',
                    ]) !!}

                    <div class="box-body">

                        <?php if(count($event_schedules_array)>0){
                            $count = 0;
                            foreach($event_schedules_array as $schedule){
                            ?>
                            <div class="add_more_div">
                                <input type="hidden"  class="sec_count" value="<?= $count; ?>"/>
                                <input type="hidden" name="schedule_id[]" class="schedule_id" id="schedule_id" value="<?= (isset($schedule->id) && $schedule->id != '') ? $schedule->id : ""; ?>"/>

                                <div class="form-group col-sm-9">
                                    <label for="title[]">Event Title*</label>
                                    <input type="text" class="form-control title" id="title" name="title[]" placeholder="Enter Title" value="<?= (isset($schedule->title) && !empty($schedule->title)) ? $schedule->title : old('title') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('title')) {
                                            echo $errors->first('title');
                                        }
                                        ?></span>
                                </div>

                                <div class="form-group col-sm-3">
                                    <label for="status">Schedule Status*</label>
                                    <select class="form-control status" id="status" name="status[]">
                                        <option value="1" <?= (isset($schedule->status) && ($schedule->status == 1)) ? 'selected' : '' ?>>Active</option>
                                        <option value="0" <?= (isset($schedule->status) && ($schedule->status == 0)) ? 'selected' : '' ?>>Inactive</option>
                                    </select>
                                </div>

                                <div class="form-group col-sm-12">
                                    <label for="address[]">Event Address</label>
                                    <input type="text" class="form-control address" id="address" name="address[]" placeholder="Enter Address" value="<?= (isset($schedule->address) && !empty($schedule->address)) ? $schedule->address : old('address') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('address')) {
                                            echo $errors->first('address');
                                        }
                                        ?></span>
                                </div>

                                <div class="form-group col-sm-3">
                                    <label for="activity_name[]">Activity Name</label>
                                    <input type="text" class="form-control activity_name" id="activity_name" name="activity_name[]" placeholder="Enter Activity Name" value="<?= (isset($schedule->activity_name) && !empty($schedule->activity_name)) ? $schedule->activity_name : old('activity_name') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('activity_name')) {
                                            echo $errors->first('activity_name');
                                        }
                                        ?></span>
                                </div>

                                <div class="form-group col-sm-9">
                                    <label for="activity[]">Event Activity</label>
                                    <input type="text" class="form-control activity" id="activity" name="activity[]" placeholder="Enter Activity" value="<?= (isset($schedule->activity) && !empty($schedule->activity)) ? $schedule->activity : old('activity') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('activity')) {
                                            echo $errors->first('activity');
                                        }
                                        ?></span>
                                </div>

                                <div style="clear:both;"></div>

                                <div class="form-group col-sm-3">
                                    <label for="event_date_<?= $count; ?>">Event Date*</label>
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control event_date" id="event_date_<?= $count; ?>" name="event_date[]" placeholder="Enter Event Date" value="<?= (isset($schedule->date) && !empty($schedule->date)) ? date('d-m-Y',strtotime($schedule->date)) : old('date') ?>">
                                        <span class="error"><?php
                                            if ($errors->has('event_date')) {
                                                echo $errors->first('event_date');
                                            }
                                            ?></span>
                                    </div>
                                </div>

                                <div class="form-group col-sm-3">
                                    <label for="from_time">From Time*</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                        <input type="text" class="form-control timepicker from_time" id="from_time_<?= $count; ?>" name="from_time[]" placeholder="Enter From Time" value="<?= (isset($schedule->from_time) && !empty($schedule->from_time)) ? $schedule->from_time : old('from_time') ?>">
                                        <span class="error"><?php
                                        if ($errors->has('from_time')) {
                                            echo $errors->first('from_time');
                                        }
                                        ?></span>
                                    </div>
                                </div>

                                <div class="form-group col-sm-3">
                                    <label for="to_time">To Time*</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                        <input type="text" class="form-control timepicker to_time" id="to_time_<?= $count; ?>" name="to_time[]" placeholder="Enter To Time" value="<?= (isset($schedule->to_time) && !empty($schedule->to_time)) ? $schedule->to_time : old('to_time') ?>">
                                        <span class="error"><?php
                                            if ($errors->has('to_time')) {
                                                echo $errors->first('to_time');
                                            }
                                            ?></span>
                                    </div>
                                </div>

                                <!--<div class="form-group col-sm-10">
                                    <label for="activity_<?= $count; ?>">Activity</label>
                                    <textarea rows=""  class="form-control activity" id="activity_<?= $count; ?>" name="activity[]" ><?php //(isset($schedule->activity) && !empty($schedule->activity)) ? $schedule->activity : old('activity') ?></textarea>
                                    <span class="error"><?php
                                        if ($errors->has('activity')) {
                                            echo $errors->first('activity');
                                        }
                                        ?></span>
                                </div>-->

                                <div class="col-sm-2 plus_div" style="display:<?= ($count == count($event_schedules_array) - 1) ? "block" : "none"; ?>;">
                                    <div class="form-group" style="margin-top:25px;">
                                        <button type="button" id="add_more_schedule" class="btn btn-primary"><i class="fa fa-plus"></i></button>
                                                                                                                <button type="button"  class="btn btn-primary remove" rel_id="<?= $schedule->id; ?>"><i class="fa fa-minus"></i></button>
                                    </div>
                                </div>

                                <div class="col-sm-2 minus_div" style="display:<?= ($count < count($event_schedules_array) - 1) ? "block" : "none"; ?>;">
                                    <div class="form-group" style="margin-top:25px;">
                                        <button type="button"  class="btn btn-primary remove" rel_id="<?= $schedule->id; ?>"><i class="fa fa-minus"></i></button>
                                    </div>
                                </div>

                                <div class="col-sm-12" >
                                    <hr/>
                                </div>
                            </div>
                        <?php $count++ ;} } else { ?>

                        <div class="add_more_div">
                            <input type="hidden"  class="sec_count" value="0"/>
                            <input type="hidden" name="schedule_id[]" id="schedule_id" class="schedule_id" value=""/>

                            <div class="form-group col-sm-9">
                                <label for="title">Event Title*</label>
                                <input type="text" class="form-control title" id="title" name="title[]" placeholder="Enter Title" value="">
                                <span class="error"><?php
                                    if ($errors->has('title')) {
                                        echo $errors->first('title');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group col-sm-3">
                                <label for="status">Schedule Status*</label>
                                <select class="form-control status" id="status" name="status[]">
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>

                            <div class="form-group col-sm-12">
                                <label for="address[]">Event Address</label>
                                <input type="text" class="form-control address" id="address" name="address[]" placeholder="Enter Address" value="">
                                <span class="error"><?php
                                    if ($errors->has('address')) {
                                        echo $errors->first('address');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group col-sm-3">
                                <label for="activity_name[]">Activity Name</label>
                                <input type="text" class="form-control activity_name" id="activity_name" name="activity_name[]" placeholder="Enter Activity Name" value="">
                                <span class="error"><?php
                                    if ($errors->has('activity_name')) {
                                        echo $errors->first('activity_name');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group col-sm-9">
                                <label for="activity[]">Event Activity</label>
                                <input type="text" class="form-control activity" id="activity" name="activity[]" placeholder="Enter Activity" value="">
                                <span class="error"><?php
                                    if ($errors->has('activity')) {
                                        echo $errors->first('activity');
                                    }
                                    ?></span>
                            </div>

                            <div style="clear:both;"></div>

                            <div class="form-group col-sm-3">
                                <label for="event_date">Event Date*</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control event_date" id="event_date_0" name="event_date[]" placeholder="Enter Event Date" value="">
                                    <span class="error"><?php
                                    if ($errors->has('date')) {
                                        echo $errors->first('date');
                                    }
                                    ?></span>
                                </div>
                            </div>

                            <div class="form-group col-sm-3">
                                <label for="from_time">From Time*</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <input type="text" class="form-control timepicker from_time" id="from_time_0" name="from_time[]" placeholder="Enter From Time" value="">
                                    <span class="error"><?php
                                    if ($errors->has('from_time')) {
                                        echo $errors->first('from_time');
                                    }
                                    ?></span>
                                </div>
                            </div>

                            <div class="form-group col-sm-3">
                                <label for="to_time">To Time*</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <input type="text" class="form-control timepicker to_time" id="to_time_0" name="to_time[]" placeholder="Enter To Time" value="">
                                    <span class="error"><?php
                                    if ($errors->has('to_time')) {
                                        echo $errors->first('to_time');
                                    }
                                    ?></span>
                                </div>
                            </div>


                            <!--<div class="form-group col-sm-10">
                                <label for="activity_0">Activity</label>
                                <textarea rows=""  class="form-control activity" id="activity_0" name="activity[]" ></textarea>
                                <span class="error"><?php
                                    if ($errors->has('activity')) {
                                        echo $errors->first('activity');
                                    }
                                    ?></span>
                            </div>-->

                            <div class="col-sm-2 plus_div">
                                <div class="form-group" style="margin-top:25px;">
                                    <button type="button" id="add_more_schedule" class="btn btn-primary"><i class="fa fa-plus"></i></button>
                                </div>
                            </div>

                            <div class="col-sm-2 minus_div" style="display:none;">
                                <div class="form-group" style="margin-top:25px;">
                                    <button type="button"  class="btn btn-primary remove"><i class="fa fa-minus"></i></button>
                                </div>
                            </div>

                            <div class="col-sm-12" >
                                <hr/>
                            </div>

                        </div>

                        <?php } ?>
                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <a href="{{ route('admin.event_add',$event_id) }}" class="btn btn-danger">Back</a>
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="submit" name='submit' value='go' class="btn btn-primary">Save & Go To Social</button>
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
<script src="{{asset('admin/plugins/ckeditor/ckeditor.js') }}"></script>
<script src="{{asset('admin/plugins/datepicker/bootstrap-datepicker.min.js') }}"></script>
<script src="{{asset('admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
<script>
$(document).ready(function () {
    /*$('.timepicker').timepicker({
        showInputs: false
    });*/


    var date = new Date();
    var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
    var end = new Date(date.getFullYear(), date.getMonth(), date.getDate());
    var i = 0;
    $('.add_more_div').each(function () {
        //CKEDITOR.replace('activity_' + i);
        $("#event_date_"+i).datepicker({
            format: "dd-mm-yyyy",
            todayHighlight: true,
            startDate: today,
            autoclose: true
        });

        $('#from_time_'+i).timepicker({
            minuteStep: 5,
            showInputs: false
        });

        $('#to_time_'+i).timepicker({
            minuteStep: 5,
            showInputs: false
        });
        i++;
    });

    $(document).on('click', "#add_more_schedule", function () {
        var newdiv = $(".add_more_div:last").clone().insertAfter(".add_more_div:last");
        var count = newdiv.find('.sec_count').val();
        //this will remove the clone of ckeditor from previous section
        //newdiv.find('#cke_activity_' + count).remove();
        count++;
        $(".plus_div").hide();
        $(".plus_div:last").show();
        $(".minus_div").show();
        $(".minus_div:last").hide();

        //newdiv.find('.activity').attr('id', 'activity' + count).val('');
        //var new_id = newdiv.find('.activity').attr('id');
        //CKEDITOR.replace('activity' + count);
        newdiv.find('.event_date').attr('id', 'event_date_' + count).val('');
        $("#event_date_"+count).datepicker({
            format: "dd-mm-yyyy",
            todayHighlight: true,
            startDate: today,
            autoclose: true
        });

        newdiv.find('.from_time').attr('id', 'from_time_' + count);
        $("#from_time_"+count).timepicker({
            minuteStep: 5,
            showInputs: false
        });

        newdiv.find('.to_time').attr('id', 'to_time_' + count);
        $("#to_time_"+count).timepicker({
            minuteStep: 5,
            showInputs: false
        });

        newdiv.find('.title').val('');
        newdiv.find('.address').val('');
        newdiv.find('.activity').val('');
        newdiv.find('.schedule_id').val('');
        newdiv.find('.event_date').val('');
        newdiv.find('.from_time').val('');
        newdiv.find('.to_time').val('');

        newdiv.find('.sec_count').val(count);
        newdiv.find('.remove').attr('rel_id', '');
        newdiv.find('span.error').hide();
    });



    $(document).on("click", ".remove", function () {
        var relId = $(this).attr('rel_id');
        var removeRow = '';
        if (confirm("Do you want to delete this?"))
        {
            if (relId == '' || relId == 0) {
                $(this).closest(".add_more_div").remove();
            } else {
                removeRow = $(this).closest(".add_more_div").remove();
                $.ajax({
                    url: '{{url('admin/delete_event_schedule/')}}',
                    type: "POST",
                    data: {row_id: relId, type: "schedule"},
                    success: function (data) {
                        if (data.status == 1){
                            $('.save-record').show().html(data.msg);
                            window.location.reload();
                            return removeRow;
                        } else{
                            $('.save-record').show().html(data.msg);
                            return false;
                        }
                    }
                });
            }
        } else {
            return false;
        }
    });


    $('#event_add_schedule_form').validate({
        errorElement: 'span',
        rules: {
            "title[]": {
                required: true
            },
        },
        messages: {
            "title[]": {
                required: "Enter title name!"
            },
        },
        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });
});
</script>