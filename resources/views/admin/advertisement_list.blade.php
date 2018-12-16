@include('admin.admin-header')

@include('admin.admin-sidebar')
<link rel="stylesheet" href="{{asset('admin/plugins/select2/select2.min.css') }}">
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Advrtisements List</h1>
        <ol class="breadcrumb">
            <!--<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>-->

        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                @include('admin.admin-error')
            </div>
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-10 pull-left">
                                    {!! Form::open(['method'=>'get']) !!}
                                    <div class="row">
                                        <div class="col-sm-4 form-group">
                                            <div class="input-group">
                                                <input class="form-control" id="search" value="{{ request('search') }}" placeholder="Search keyword" name="search" type="text" id="search"/>
                                                <div class="input-group-btn">
                                                    <button type="submit" class="btn btn-primary"> Search</button>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" value="{{request('field')}}" name="field"/>
                                        <input type="hidden" value="{{request('sort')}}" name="sort"/>
                                    </div>
                                    {!! Form::close() !!}

                                </div>

                                <div class="col-md-2 pull-right">
                                    <button type="button" class="btn btn-primary pull-right" id="addAdBtn">Add Advertisement</button>
                                </div>

                            </div>
                        </div>

                        <table id="" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sr. No.</th>

                                    <th>
                                        <a href="{{url('admin/advertisement_list')}}?search={{request('search')}}&field=ad_type&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Ad Type &nbsp;<i class="fa fa-sort-alpha-{{request('field','title')=='title'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a>
                                    </th>
                                    <th>
                                        Ad Location
                                    </th>
                                    <th>
                                        Ad Image
                                    </th>
                                    <th>
                                        Ad Url
                                    </th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                @foreach($arr_advertisements  as $advertisement)
                                <tr>
                                    <td>{{ $i }}.</td>
                                    <td>{{ $advertisement->ad_type == 1 ? 'Top Banner' : 'Right Banner' }}</td>
                                    <td>{{ $advertisement->ad_location }}
                                    </td>
                                    <td><img src='{{ asset('images/advertisement/'.$advertisement->ad_image) }}' width='50px' height='50px' alt="advertisement" /> </td>
                                    <td><a href='{{ $advertisement->ad_url }}'>{{ $advertisement->ad_url }}</a></td>
                                    <td>{{ $advertisement->status == 1 ? 'Active' : 'Inactive' }}</td>
                                    <td>
                                        <a href="javascript:void(0);" onclick="delete_banner(<?= $advertisement->id; ?>,'<?= $advertisement->ad_image; ?>')" class="btn btn-danger" style="background-color:red"><i class="fa fa-close"></i></a>
                                        <a href="javascript:void(0);" rel="<?= $advertisement->id; ?>" class="btn btn-success edit_adv" ><i class="fa fa-edit"></i></a>
                                    </td>

                                    <?php $i++; ?>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        {{ $arr_advertisements->links() }}
                    </div>
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!--modal start -->
<div class="modal fade" id="addAd" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content" id="home_page_popup_id">
            {!! Form::open([
            'name' => 'ad_form',
            'id' => 'ad_form',
            'enctype' => 'multipart/form-data',
            'method' => 'post'
            ]) !!}

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times"></i></button>
                    <h2 class="modal-title text-center">Add Advertisement</h2>
                </div>
                <div class="modal-body">
                    <div class="row home_page_popup">
                        <input type="hidden" name="old_advertisement" id="old_advertisement" value=""/>
                        <input type="hidden" name="ad_id" id="ad_id" value=""/>
                        <div class="col-sm-12 success"></div>
                        <div class="form-group col-sm-12">
                            <label for="ad_type">Ad Type</label>
                            <select class="form-control" name="ad_type" id="ad_type">
                                <option value="" >Select your Ad Type</option>
                                <option value="1">Top Banner</option>
                                <option value="2">Right Banner</option>
                            </select>
                            <span class="error"></span>
                        </div>
                        <div class="form-group col-sm-12">
                            <label for="ad_location">Ad location</label>
                            <select name="ad_location" id="ad_location" class="form-control">
                                <option value="">Select your Ad Location</option>
                                <option value="category">Category List</option>
                                <option value="event">Eevnts</option>
                                <option value="search">Search</option>
                                <option value="story">Story</option>
                            </select>
                            <span class="error"></span>
                        </div>

                        <div class="form-group col-sm-12" id="cat_div" style="display:none;">
                            <label for="category">Category</label>
                            <select class="form-control select2" name="category[]" id="category" multiple="multiple" data-width="100%">
                                <?php foreach ($arr_categories as $category) { ?>
                                    <option value="<?= $category->id; ?>"><?= $category->category_name; ?></option>
                                <?php } ?>
                            </select>
                            <span class="error" id="cat_error"></span>
                        </div>


                        <div class="form-group col-sm-12" id="event_div" style="display:none;">
                            <label for="events">Events</label>
                            <select class="form-control select2" name="events[]" id="events" multiple="multiple" data-width="100%">
                                <?php foreach ($arr_events as $event) { ?>
                                    <option value="<?= $event->id; ?>"><?= $event->title; ?></option>
                                <?php } ?>
                            </select>
                            <span class="error" id="event_error"></span>
                        </div>

                        <div class="form-group col-sm-12">
                            <label for="upload_banner">Upload Banner</label>
                            <input type="file" name="upload_banner" id="upload_banner" class="form-control check_type">
                            <span class="error error_type"></span>
                        </div>
                        <div class="form-group col-sm-12" id="img_div" style="display:none;">
                            <img id="ad_icon" src="" width="100px;" height="100px;" alt="ad_icon" >
                        </div>
                        <div class="form-group col-sm-12">
                            <label for="link_to">Link to</label>
                            <input class="form-control" type="text" name="link_to" id="link_to">
                            <span class="error"></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="status">Status</label>
                            <select class="form-control" name="status" id="status">
                                <option value="1">Active</option>
                                <option value="0">Inactive</option>
                            </select>
                            <span class="error" id="status_error"></span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">

                    <button type="submit" name="action" class="btn btn-primary" id="ad_btn" value="addAd">Add Ad</button>
                    <button type="submit" name="action" class="btn btn-danger"  data-dismiss="modal">Cancel</button>
                </div>
            {!! Form::close() !!}
        </div>

    </div>
</div>
@include('admin/admin-footer')

<script src="{{asset('admin/plugins/select2/select2.full.js') }}"></script>
<script type="text/javascript" >
    $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(document).ready(function () {
        $('.select2').select2();

        $('#addAdBtn').click(function () {
            $('#ad_form .modal-title').html('Add Advertisement');
            $('#ad_form #ad_id').val('');
            $('#ad_form #ad_type').val('');
            $('#ad_form #ad_location').val('');
            $('#ad_form #category').select2('val', 0);
            $('#ad_form #events').select2('val', 0);
            $('#ad_form #link_to').val('');
            $('#ad_form #ad_hidden').val('');
            $('#ad_form #ad_btn').html('Add');
            $('#cat_div').hide();
            $('#event_div').hide();
            $('#ad_form #img_div').hide();
            $('#addAd').modal('show');
        });


        $(document).on('change', '#ad_location', function () {
            $('#ad_form #category').select2('val', 0);
            $('#ad_form #events').select2('val', 0);
            var ad_loc = $(this).val();
            if (ad_loc == 'category') {
                $('#cat_div').show();
                $('#event_div').hide();
            } else if (ad_loc == 'event') {
                $('#cat_div').hide();
                $('#event_div').show();
            } else {
                $('#cat_div').hide();
                $('#event_div').hide();
            }
        });


        $(document).on('click', '.edit_adv', function () {
            var adv_id = $(this).attr('rel');
            $.ajax({
                type: "POST",
                url: "{{ URL::route('admin.advertisement_info') }}",
                data: {adv_id:adv_id},
                dataType: 'json',
                success: function (data) {
                    $('.error').hide();
                    $('#cat_div').hide();
                    $('#cat_div').hide();
                    $('#event_div').hide();
                    $('#ad_form #img_div').hide();
                    if (data.success == '1') {
                        $('#ad_form .modal-title').html('Update Advertisement');
                        $('#ad_form #ad_btn').html('Update');
                        $('#ad_form #ad_id').val(data.banners.id);
                        $('#ad_form #ad_type').val(data.banners.ad_type);
                        $('#ad_form #ad_location').val(data.banners.ad_location);

                        if (data.banners.ad_location == 'category') {
                            $('#cat_div').show();
                            $('#ad_form #category').select2('val', data.cat);
                        }
                        if (data.banners.ad_location == 'event') {
                            $('#event_div').show();
                            $('#ad_form #events').select2('val', data.event);
                        }

                        $('#ad_form #old_advertisement').val(data.banners.ad_image);
                        if (data.banners.ad_image != '') {
                            $('#ad_form #img_div').show();
                            var src_path = "{{ asset('images/advertisement/') }}";
                            $('#ad_form #ad_icon').attr('src', src_path+'/'+data.banners.ad_image);
                        }
                        $('#ad_form #link_to').val(data.banners.ad_url);
                        $('#ad_form #status').val(data.banners.status);
                        $('#addAd').modal('show');
                    }
                }
            });
        });
        $(document).on('change', '.check_type', function () {
            var fileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                $(this).next('.error_type').show().html('Allowed Formats : ' + fileExtension.join(', '));
                $(this).val('');
            } else {
                $(this).next('.error_type').hide();
            }
        });
        $('#ad_form').validate({
            rules: {
                ad_type: "required",
                ad_location: "required",
                'events[]': {
                    required: function () {
                        if ($('#ad_location').val() == 'event') {
                            return true;
                        } else {
                            return false;
                        }
                    }
                },
                'category[]': {
                    required: function () {
                        if ($('#ad_location').val() == 'category') {
                            return true;
                        } else {
                            return false;
                        }
                    }
                },
                link_to: "required",
                upload_banner: {
                    required: function () {
                        if ($('#banner_hidden').val() == '') {
                            return true;
                        } else {
                            return false;
                        }
                    }
                }
            },
            messages: {
                ad_type: "Advertisement Type field is required",
                ad_location: "Advertisement Location field is required",
                'category[]': "The Category field is required",
                'event[]': "The event field is required",
                link_to: "The Link To field is required",
                upload_banner: "The Upload Banner field is required"
            },
            highlight: function (element) {
                $(element).closest('.form-control').removeClass('has-error');
                $(element).closest('div').removeClass('fg-line');
            },
            errorPlacement: function (error, element) {
                if (element.attr("type") == "radio"){
                    error.insertAfter('#radio_error');
                } else if (element.attr("id") == "category") {
                    error.insertAfter(element.next('.select2-container'));
                } else if (element.attr("id") == "event") {
                    error.insertAfter(element.next('.select2-container'));
                } else {
                    error.insertAfter(element);
                }
            },
            submitHandler: function () {
                $.ajax({
                    type: "POST",
                    url: "{{ URL::route('admin.add_advertisement') }}",
                    processData: false,
                    contentType: false,
                    data: new FormData($('#ad_form')[0]),
                    dataType: 'json',
                    beforeSend: function () {
                        $('#ad_loading').show();
                    },
                    success: function (data) {
                        $("#ad_btn").text('please wait').attr('disabled',true);
                        $('.error').hide();
                        $('#ad_loading').hide();
                        if (data.success == '1') {

                            $('#ad_form .success').html('<div class="alert alert-success text-center"><a href="#" class="close" data-dismiss="alert">&times;</a>' + data.msg + '</div>').show();
                            window.setTimeout(function () {
                                $('#ad_form .success').hide();
                                window.location.reload();
                            }, 2000);

                        } else if (data.success == '3') {
                            $('#ad_form .success').html('<div class="alert alert-danger text-center"><a href="#" class="close" data-dismiss="alert">&times;</a>' + data.msg + '</div>').show();
                        } else {
                            if (data.errorList.ad_type != '') {
                                $('#ad_form #banner_type').next('.error').html(data.errorList.ad_type).show();
                            }
                            if (data.errorList.ad_location != '') {
                                $('#ad_form #banner_location').next('.error').html(data.errorList.ad_location).show();
                            }
                            if (data.errorList.category != '') {
                                $('#cat_error').html(data.errorList.category).show();
                            }
                            if (data.errorList.events != '') {
                                $('#event_error').next('#event_error').html(data.errorList.events).show();
                            }
                            if (data.errorList.link_to != '') {
                                $('#ad_form #link_to').next('.error').html(data.errorList.link_to).show();
                            }
                            if (data.errorList.upload_banner != '') {
                                $('#ad_form #upload_banner').next('.error').html(data.errorList.upload_banner).show();
                            }
                        }
                    }
                });
            }
        });
    });

    function delete_banner(ad_id, ad_image) {

        if (confirm('Are yor sure want to delete this Ad')) {
            $.ajax({
                url: "{{ URL::route('admin.delete_ad') }}",
                type: 'post',
                data: {ad_id: ad_id, ad_image: ad_image},
                dataType: 'json',
                crossDomain: true,
                success: function (response) {
                    if (!response.status){
                        alert(response.msg);
                        return false;
                    } else{
                        location.reload();
                    }
                },
            });
        }
    }
</script>