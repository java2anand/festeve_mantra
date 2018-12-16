@include('admin.admin-header')
@include('admin.admin-sidebar')
<script src="{{asset('admin/plugins/ckeditor/ckeditor.js') }}"></script>
<?php //$event_id = (isset($event->id) && !empty($event->id)) ? $event->id : ''; ?>
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
                    'method' => 'post',
                    'url' => ['admin/event_add_address', $event_id],

                    'id' => 'event_add_address_form',
                    ]) !!}

                    <input type="hidden" name="latitude" id="latitude" value="<?= (isset($event_address->latitude) && !empty($event_address->latitude)) ? $event_address->latitude : old('latitude') ?>" />
                    <input type="hidden" name="longitude" id="longitude" value="<?= (isset($event_address->longitude) && !empty($event_address->longitude)) ? $event_address->longitude : old('longitude') ?>"  />
                    <input type="hidden" name="address_id"  value="<?= (isset($event_address->id) && !empty($event_address->id)) ? $event_address->id : '' ?>"  />


                    <div class="box-body">
                        <div class="form-group col-sm-12">
                            <label for="event_location	">Event Location</label>
                            <input type="text" name="event_location" class="form-control input-md" onFocus="geolocate()" id="autocomplete" placeholder="Type location.."  value="<?= (isset($event_address->event_location) && !empty($event_address->event_location)) ? $event_address->event_location : old('event_location') ?>" />

                            <span class="error"><?php if ($errors->has('event_location')) { echo $errors->first('event_location'); } ?></span>
                        </div>


                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="city">Event City</label>
                            <input type="text" class="form-control" id="locality" name="city"  value="<?= (isset($event_address->city) && !empty($event_address->city)) ? $event_address->city : old('city') ?>">
                            <span class="error"><?php if ($errors->has('city')) {
    echo $errors->first('city');
} ?></span>
                        </div>


                        <div class="form-group col-sm-6">
                            <label for="state">Event State</label>
                            <input type="text" class="form-control" id="administrative_area_level_1" name="state"  value="<?= (isset($event_address->state) && !empty($event_address->state)) ? $event_address->state : old('state') ?>">
                            <span class="error"><?php if ($errors->has('state')) { echo $errors->first('state'); } ?></span>
                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-6">
                            <label for="country">Event Country</label>
                            <input type="text" class="form-control" id="country" name="country"  value="<?= (isset($event_address->country) && !empty($event_address->country)) ? $event_address->country : old('country') ?>">

                            <span class="error"><?php if ($errors->has('country')) {
    echo $errors->first('country');
} ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="postal_code">Postal Code</label>
                            <input type="text" class="form-control" id="postal_code" name="postal_code"  value="<?= (isset($event_address->postal_code) && !empty($event_address->postal_code)) ? $event_address->postal_code : old('postal_code') ?>">

                            <span class="error"><?php if ($errors->has('postal_code')) {
    echo $errors->first('postal_code');
} ?></span>
                        </div>

                        <div class="form-group col-sm-6">
                            <label for="primary_address">Primary Address</label>
                            <select class="form-control" id="primary_address" name="primary_address">
                                <option value="1" <?= isset($event_address->primary_address) && $event_address->primary_address == '1' ? 'selected' : '' ?>>Yes</option>
                                <option value="0" <?= isset($event_address->primary_address) && $event_address->primary_address == '0' ? 'selected' : '' ?>>No</option>
                            </select>
                        </div>

                        <div style="clear:both;"></div>

                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <a href="{{ route('admin.event_add_social',$event_id) }}" class="btn btn-danger">Back</a>
                        <button type="submit" name='submit' value='save' class="btn btn-primary">Save</button>
                        <button type="submit" name='submit' value='go' class="btn btn-primary">Save & Go To Seo</button>
                        <a href="{{ route('admin.event_list') }}" class="btn btn-danger">Cancel</a>

                    </div>
                    {!! Form::close() !!}
                </div>
                <!-- /.box -->
            </div>
            <!-- /.row -->

            @if(count($event->address)>0)
            <div class="row box">
                <h3>Event Address</h3>
                <div class="table-responsive">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <th>Sr. No.</th>
                            <th>Location</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Country</th>
                            <th>Pincode</th>
                            <th>Primary</th>
                            <th>Action</th>
                        </tr>
                        @php $i = 1; @endphp
                        @foreach($event->address as $add)
                        <tr>
                            <td>{{$i}}</td>
                            <td>{{$add->event_location}}</td>
                            <td>{{$add->city}}</td>
                            <td>{{$add->state}}</td>
                            <td>{{$add->country}}</td>
                            <td>{{$add->postal_code}}</td>
                            <td><?= $add->primary_address == 1 ? 'Yes' : 'No'; ?></td>

                            <td width="10%">
                                <div class="btn-group">
                                    <a href="{{ url('admin/event_add_address/'.$add->event_id.'/'.$add->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-success" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                </div>
                                <div class="btn-group">
                                    <a href="" data-toggle="tooltip" title="" class="btn btn-sm btn-danger remove" rel_id="<?= $add->id; ?>" data-original-title="Delete"><i class="fa fa-times"></i></a>
                                </div>
                            </td>
                        </tr>
                        @php $i++; @endphp
                        @endforeach
                    </tbody>
                </table>
                </div>
            </div>
            @endif

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


    $(document).on("click", ".remove", function () {
        var relId = $(this).attr('rel_id');
        if (confirm("Do you want to delete this?")){
            $.ajax({
                url: '{{url('admin/delete_event_address/')}}',
                type: "POST",
                data: {row_id: relId},
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
        } else {
            return false;
        }
    });

});

</script>
<script>
    var placeSearch, autocomplete;
    var componentForm = {
        locality: 'long_name', // city
        administrative_area_level_1: 'long_name', //state
        country: 'long_name', //country
        postal_code: 'short_name' // pin code
    };
    function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
                /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
                {types: ['geocode']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
    }
    function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();
        $("#latitude").val(place.geometry.location.lat());
        $("#longitude").val(place.geometry.location.lng());

        for (var component in componentForm) {
            document.getElementById(component).value = '';
            document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
            if (componentForm[addressType]) {
                var val = place.address_components[i][componentForm[addressType]];
                document.getElementById(addressType).value = val;
            }
        }
    }
    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.
    function geolocate() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var geolocation = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                var circle = new google.maps.Circle({
                    center: geolocation,
                    radius: position.coords.accuracy
                });
                autocomplete.setBounds(circle.getBounds());
            });
        }
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjvjVSrDJA2dCpKqYaf4keThmElDGRSCg&signed_in=true&libraries=places&callback=initAutocomplete"></script>
