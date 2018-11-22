@include('admin.admin-header')
@include('admin.admin-sidebar')
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
                    'url' => ['admin/event_add_gallery', $event_id],
                    'id' => 'event_add_gallery_form',
                    'enctype' => 'multipart/form-data',
                    ]) !!}

                    <div class="box-body">

                        <?php if(count($event_gallery_array)>0){
                            $count = 0;
                            foreach($event_gallery_array as $gallery){
                            ?>
                            <div class="add_more_div">
                                <input type="hidden"  class="sec_count" value="<?= $count; ?>"/>
                                <input type="hidden" name="gallery_id[]" class="gallery_id" id="gallery_id" value="<?= (isset($gallery->id) && $gallery->id != '') ? $gallery->id : ""; ?>"/>

                                <div class="form-group col-sm-4">
                                    <label for="title[]">Event Gallery Title</label>
                                    <input type="text" class="form-control title" id="title" name="title[]" placeholder="Enter Gallery Title" value="<?= (isset($gallery->title) && !empty($gallery->title)) ? $gallery->title : old('title') ?>">
                                    <span class="error"><?php
                                        if ($errors->has('title')) {
                                            echo $errors->first('title');
                                        }
                                        ?></span>

                                </div>

                                <div class="form-group col-sm-4">
                                    <label for="images[]">Event Gallery Image</label>
                                    <input type="file" class="form-control images" id="images" name="images[]">
                                    <input type="hidden" class="old_image" name="old_image[]" value="<?= (isset($gallery->image) && !empty($gallery->image)) ? $gallery->image : '' ?>" />
                                </div>


                                <?php
                                $image = (isset($gallery->image) && !empty($gallery->image)) ? $gallery->image : '';
                                if (isset($image) && !empty($image) && file_exists(public_path() . '/images/event/gallery/' . $image)) {
                                    ?>
                                    <div class="form-group col-sm-2 image_div">
                                        <img src="{{ asset( 'images/event/gallery/'.$image)}}" width="100" height="50" alt="event"/>
                                    </div>
                                <?php } ?>

                                <div class="col-sm-2 plus_div" style="display:<?= ($count == count($event_gallery_array) - 1) ? "block" : "none"; ?>;">
                                <div class="form-group" style="margin-top:25px;">
                                        <button type="button" id="add_more_gallery" class="btn btn-primary"><i class="fa fa-plus"></i></button>
                                                                                                                <button type="button"  class="btn btn-primary remove" rel_id="<?= $gallery->id; ?>"><i class="fa fa-minus"></i></button>
                                </div>
                                </div>

                                <div class="col-sm-2 minus_div" style="display:<?= ($count < count($event_gallery_array) - 1) ? "block" : "none"; ?>;">
                                    <div class="form-group" style="margin-top:25px;">
                                        <button type="button"  class="btn btn-primary remove" rel_id="<?= $gallery->id; ?>"><i class="fa fa-minus"></i></button>
                                    </div>
                                </div>

                                <div class="col-sm-12" >
                                    <hr/>
                                </div>
                            </div>
                        <?php $count++ ;} } else { ?>

                        <div class="add_more_div">
                            <input type="hidden"  class="sec_count" value="0"/>
                            <input type="hidden" name="gallery_id[]" id="gallery_id" class="gallery_id" value=""/>
                            <div class="form-group col-sm-4">
                                <label for="title[]">Gallery Title</label>
                                <input type="text" class="form-control title" id="title" name="title[]" placeholder="Enter Gallery Title" value="">
                                <span class="error"><?php
                                    if ($errors->has('title')) {
                                        echo $errors->first('title');
                                    }
                                    ?></span>
                            </div>

                            <div class="form-group col-sm-4">
                                <label for="images[]">Event Gallery Image</label>
                                <input type="file" class="form-control images" id="images" name="images[]">
                            </div>

                            <div class="col-sm-2 plus_div">
                                <div class="form-group" style="margin-top:25px;">
                                    <button type="button" id="add_more_gallery" class="btn btn-primary"><i class="fa fa-plus"></i></button>
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
    $(document).on('click', "#add_more_gallery", function () {
        var newdiv = $(".add_more_div:last").clone().insertAfter(".add_more_div:last");
        var count = newdiv.find('.sec_count').val();
        //this will remove the clone of ckeditor from previous section

        count++;
        $(".plus_div").hide();
        $(".plus_div:last").show();
        $(".minus_div").show();
        $(".minus_div:last").hide();

        newdiv.find('.title').val('');
        newdiv.find('.gallery_id').val('');
        newdiv.find('.old_image').val('');
        newdiv.find('.image_div').hide('');

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
                    url: '{{url('admin/delete_event_gallery/')}}',
                    type: "POST",
                    data: {row_id: relId, type: "gallery"},
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


    $('#event_add_gallery_form').validate({
        errorElement: 'span',
        rules: {
            /*"title[]": {
                required: true
            },*/
        },
        messages: {
            /*"title[]": {
                required: "Enter title name!"
            },*/
        },
        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });
});
</script>