@include('admin.admin-header')
@include('admin.admin-sidebar')

<?php
$tab = Request::get('tab');
if (empty($tab)) { $tab = ''; }
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            User Profile
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php //echo base_url('/');  ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">User profile</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content profile_page_outer">

        <div class="row">
            <div class="col-md-3">
                <!-- Profile Image -->
                <div class="box no-border box_common_class">
                    <div class="box-body box-profile box-profile-new">
                        <div class="profile-user-img-outer">

                            <?php
                                $image = (isset($user->profile_img) && !empty($user->profile_img)) ? $user->profile_img: '';
                                if (file_exists( public_path() . '/admin/profile_image/' . $image)) {?>
                                    <img class="profile-user-img img-responsive img-circle" id="logo_image" src="{{ asset( 'admin/profile_image/'.$image )}}" alt="User profile picture" />
                            <?php } else {?>
                                    <img class="profile-user-img img-responsive img-circle" src="{{asset('dist/img/user2-160x160.jpg' )}} " alt="User profile picture" />
                            <?php } ?>

                            <a href="javascript:void(0)" title="Upload Logo" onClick="$('#image_upload').trigger('click');" class="pmop-edit edit_pic_btn" ><i class="fa fa-camera"></i></a>


                            {!! Form::open([
                                'id' => 'img_form',
                                'name' => 'img_form',
                                'enctype' => 'multipart/form-data',
                            ]) !!}


                                <input type="hidden" name="hidden_img" id="hidden_img" value="<?php
                                 if (isset($user->profile_img) && !empty($user->profile_img)) {
                                     echo $user->profile_img;
                                 }
                            ?>"/>
                                <input type="file" name="image_upload" id="image_upload" class="check_type" style="display:none;" onChange="if ($(this).val() != '') {
                                            $('#img_form').submit();
                                        }" value=""/>
                                <span class="error error_type"></span>
                            </form>
                        </div>

                        <h3 class="profile-username text-center">
                            Abhishek Anand
                        </h3>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <!-- About Me Box -->
                <div class="box no-border box_common_class">
                    <div class="box-header with-border">
                        <h3 class="box-title">About Me</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body user_info_text">
                        <strong><i class="fa fa-book margin-r-5"></i> Contact</strong>
                        <p class="text-muted">
                            <?= (isset($user->contact_number) && !empty($user->contact_number)) ? '+91- ' . $user->contact_number : "N/A"; ?>
                        </p>
                        <hr>
                        <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                        <p class="text-muted">
                            <?php
                            if (isset($user->state) && isset($user->city)) {
                                if (!empty($user->state) && !empty($user->city)) {
                                    echo $user->city_name . ", " . $user->state_name;
                                } else if (!empty($user->state) && empty($user->city)) {
                                    echo $user->state_name;
                                } else if (!empty($user->city) && empty($user->state)) {
                                    echo $user->city_name;
                                } else {
                                    echo "N/A";
                                }
                            } else {
                                echo "N/A";
                            }
                            ?>
                        </p>
                        <hr>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-9 ">
                <div class="nav-tabs-custom box_common_class">
                    <ul class="nav nav-tabs">
                        <li id="basic_li_tab" class="<?= (isset($tab) && (($tab == 'Basic_Info') || ($tab == ''))) ? "active" : ""; ?>"><a href="#basic" data-toggle="tab" class="box-title">Basic Info</a></li>

                        <li id="pass_li_tab" class="<?= (isset($tab) && ($tab == 'Change_Password_Info')) ? "active" : ""; ?>"><a href="#change_password_info" data-toggle="tab" class="box-title">Change Password</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="<?= (isset($tab) && (($tab == 'Basic_Info') || ($tab == ''))) ? "active" : ""; ?> tab-pane" id="basic">
                            @if(Session::has('basic_info_msg'))
                                {!! Session::get('basic_info_msg') !!}
                            @endif


                            <div class="view_info" id="basicInfo" style="display:<?= (isset($tab) && ($tab == 'Basic_Info')) ? "none" : "block"; ?>;">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <a href="javascript:void(0)" class="btn btn_hover auto_min_width hvr-sweep-to-right pull-right editButton" id="editButton"><i class="fa fa-edit"></i> Edit</a>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12 control-label">First Name:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->firstname) && !empty($user->firstname)) ? $user->firstname : "N/A"; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">Last Name:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->lastname) && !empty($user->lastname)) ? $user->lastname : "N/A"; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">Email:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->email) && !empty($user->email)) ? $user->email : "N/A"; ?>
                                        </div>
                                    </div>


                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">Address:</label>
                                        <div class="col-sm-8 col-xs-12 "><?= (isset($user->address) && !empty($user->address)) ? $user->address : "N/A"; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">City:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->city_name) && !empty($user->city_name)) ? $user->city_name : "N/A"; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">State:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->state_name) && !empty($user->state_name)) ? $user->state_name : "N/A"; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">Country:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            India
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">Zipcode:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->postal_code) && !empty($user->postal_code)) ? $user->postal_code : "N/A"; ?>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 user_info_text">
                                        <label class="col-sm-4 col-xs-12  control-label">Contact Number:</label>
                                        <div class="col-sm-8 col-xs-12 ">
                                            <?= (isset($user->contact_number) && !empty($user->contact_number)) ? $user->contact_number : "N/A"; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="editBasicInfo" class="edit_info" style="display:<?= (isset($tab) && ($tab == 'Basic_Info')) ? "block" : "none"; ?>">

                                {!! Form::open([
                                    'url' => ['admin/profile'],
                                    'id' => 'update_basic_frm',
                                    'name' => 'update_basic_frm',
                                    'class' => 'form-horizontal',
                                    'method' => 'POST',
                                ]) !!}

                                    <div class="form-group user_info_text">
                                        <label for="firstname" class="col-sm-2 control-label">First Name<strong class="error">*</strong>: </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name" value="<?= (isset($user->firstname) && !empty($user->firstname)) ? $user->firstname : ""; ?>">
                                            <span class="error">
                                                <?php if ($errors->has('firstname')) {
                                                echo $errors->first('firstname'); }?> </span>
                                        </div>
                                    </div>
                                    <div class="form-group user_info_text">
                                        <label for="lastname" class="col-sm-2 control-label">Last Name<strong class="error">*</strong>: </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name" value="<?= (isset($user->lastname) && !empty($user->lastname)) ? $user->lastname : ""; ?>">
                                            <span class="error">
                                                <?php if ($errors->has('lastname')) {
                                                echo $errors->first('lastname'); }?> </span>
                                        </div>
                                    </div>



                                    <div class="form-group user_info_text">
                                        <label for="address" class="col-sm-2 control-label">Address<strong class="error">*</strong>: </label>
                                        <div class="col-sm-10">
                                            <textarea class="form-control" id="address" name="address" placeholder="Address"><?= (isset($user->address) && !empty($user->address)) ? $user->address : ""; ?></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group user_info_text">
                                        <label for="state" class="col-sm-2 control-label">Country<strong class="error">*</strong>: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="country" id="country">
                                                <option value="99">India</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group user_info_text">
                                        <label for="state" class="col-sm-2 control-label">State<strong class="error">*</strong>: </label>

                                        <div class="col-sm-10">
                                            <select class="form-control" name="state" id="state">
                                                <option value="">Select State</option>
                                                <?php
                                                if (count($state_list) > 0) {
                                                    foreach ($state_list as $state) {
                                                        ?>
                                                        <option value="<?= $state->state_id; ?>" <?= (isset($user->state) && $user->state == $state->state_id) ? "selected" : ""; ?>><?= $state->state_name ; ?></option>
                                                        <?php
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group user_info_text">
                                        <label for="city" class="col-sm-2 control-label">City<strong class="error">*</strong>: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="city" id="city">
                                                <option value="">Select City</option>
                                                <?php
                                                if (count($city_list) > 0) {
                                                    foreach ($city_list as $city) {
                                                        ?>
                                                        <option value="<?= $city->city_id; ?>" <?= (isset($user->city) && $user->city == $city->city_id) ? "selected" : ""; ?>><?= $city->city_name; ?></option>
                                                        <?php
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group user_info_text">
                                        <label for="postal_code" class="col-sm-2 control-label">Postal Code<strong class="error">*</strong>: </label>

                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" name="postal_code" id="postal_code" placeholder="Postal Code" value="<?= (isset($user->postal_code) && !empty($user->postal_code)) ? $user->postal_code : ""; ?>">
                                            <span class="error">
                                                <?php if ($errors->has('postal_code')) {
                                                echo $errors->first('postal_code'); }?> </span>
                                        </div>
                                    </div>

                                    <div class="form-group user_info_text">
                                        <label for="contact_number" class="col-sm-2 control-label">Contact Number<strong class="error">*</strong>: </label>

                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" name="contact_number" id="contact_number" placeholder="Contact Number" value="<?= (isset($user->contact_number) && !empty($user->contact_number)) ? $user->contact_number : ""; ?>">

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" name="cancel" class="btn popup_hover_btn hvr-sweep-to-right cancel_btn">Cancel</button>
                                            <button type="submit" name="sub_basic_info" id="sub_basic_info" value="Basic Info" class="btn popup_active_btn">Submit</button>

                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <div class="<?= (isset($tab) && ($tab == 'Change_Password_Info')) ? "active" : ""; ?> tab-pane" id="change_password_info">

                            @if(Session::has('change_pass_msg'))
                                {!! Session::get('change_pass_msg') !!}
                            @endif
                            <!--if successfully changed then logout-->

                            <div class="edit_info" style="display:<?= (isset($tab) && ($tab == 'Change_Password_Info')) ? "block" : "block"; ?>;">
                                <div class="">

                                    {!! Form::open([
                                        'url' => ['admin/profile'],
                                        'id' => 'update_pass_frm',
                                        'name' => 'update_pass_frm',
                                        'class' => 'form-horizontal',
                                        'method' => 'POST',
                                    ]) !!}

                                        <div class="form-group user_info_text">
                                            <label for="acc_num" class="col-sm-2 control-label">Old Password<strong class="error">*</strong>: </label>
                                            <div class="col-sm-10">
                                                <input type="password" name="old_pass" id="old_pass" class="form-control" placeholder="Old Password" />
                                                <span class="error"><?php //form_error('old_pass');  ?></span>
                                            </div>
                                        </div>

                                        <div class="form-group user_info_text">
                                            <label for="acc_num" class="col-sm-2 control-label">New Password<strong class="error">*</strong>: </label>
                                            <div class="col-sm-10">
                                                <input type="password" name="new_pass" id="new_pass" class="form-control" placeholder="New Password" />
                                                <span class="error"><?php //form_error('new_pass');  ?></span>
                                            </div>
                                        </div>
                                        <div class="form-group user_info_text">
                                            <label for="acc_num" class="col-sm-2 control-label">Confirm Password<strong class="error">*</strong>: </label>
                                            <div class="col-sm-10">
                                                <input type="password" name="confirm_pass" id="confirm_pass" class="form-control" placeholder="Confirm Password" />
                                                <span class="error"><?php //form_error('confirm_pass');  ?></span>
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" name="sub_password_info" id="sub_password_info" value="Change Password Info" class="btn popup_active_btn">Update</button>

                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>

                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@include('admin/admin-footer')
<script>
    function delete_profile_image() {
        if (confirm("Are you sure to remove image?")) {
            $.ajax({
                type: "POST",
                url: 'users/delete_image/',
                success: function (data) {
                    if (data.status == '1') {
                        location.reload();
                    }
                }
            });

        } else {
            return false;
        }
    }

    $(document).ready(function () {

        /*********Adding Custom Rules for name, email and phone in validator plugins**********/
        $.validator.addMethod("accept", function (value, element)
        {
            return this.optional(element) || /^[a-zA-Z-,]+(\s{0,1}[a-zA-Z-,.!_@ ])*$/.test(value);
        }, "Letters and spaces only please");
        $.validator.addMethod("email", function (value, element)
        {
            return this.optional(element) || /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value);
        }, "Letters and spaces only please");
        $.validator.addMethod("validPhone", function (value, element)
        {
            return this.optional(element) || /^[6-9][0-9]{9}$/.test(value);
        }, "Valid Number only please");
        /*********End Adding Custom Rules for name, email and phone in validator plugins**********/

        /***********User Profile Info Validation**********/
        $('#update_basic_frm').validate({
            errorElement: 'span',
            rules: {
                firstname: {
                    required: true,
                    accept: true
                },
                lastname: {
                    required: true,
                    accept: true
                },
                //state: "required",
                //city: "required",
                address: "required",
                postal_code: {
                    required: true,
                    number: true,
                    minlength: 6,
                    maxlength: 6,
                },
                contact_number: {
                    required: true,
                    number: true,
                    validPhone: true,
                    minlength: 10,
                    maxlength: 10,
                },
            },
            messages: {
                firstname: {
                    required: "Please Enter First Name!",
                    accept: "Please Enter only alphabet/char!"
                },
                lastname: {
                    required: "Please Enter Last Name!",
                    accept: "Please Enter only alphabet/char!"
                },
                //state: "Please Select Your State",
                //city: "Please Select Your City",
                address: "Please Enter your address",
                postal_code: {
                    required: "Please Enter Zipcode!",
                    number: "The Zipcode field must contain only numbers!",
                    minlength: "The Zipcode field must be at least 6 characters in length!",
                    maxlength: "The Zipcode field can not exceeded 6 characters in length!"
                },
                contact_number: {
                    required: "Please Enter Contact Number!",
                    number: "The Contact Number field must contain only numbers!",
                    validPhone: "Please Enter Valid  Contact Number!",
                    minlength: "The Contact Number field must be at least 10 characters in length!",
                    maxlength: "The Contact Number field can not exceeded 10 characters in length!"
                },

            },
            errorPlacement: function (error, element) {
                error.insertAfter(element);
            },
            highlight: function (element) {
                $(element).closest('.form-control').removeClass('has-error');
            },
            submitHandler: function (form) {
                $('#sub_basic_info').attr('disabled', 'disabled');
                $("#sub_basic_info").text('Please wait.');
                form.submit();
            }
        });



        $('#update_pass_frm').validate({
            errorElement: 'span',
            rules: {
                old_pass: {
                    required: true,
                },
                new_pass: {
                    required: true,
                    minlength: 6,
                },
                confirm_pass: {
                    required: true,
                    equalTo: "#new_pass",
                },
            },
            messages: {
                confirm_pass: {
                    equalTo: "Please enter same password again",
                },
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element);
            },
            submitHandler: function (form) {
                $('#sub_password_info').attr('disabled', 'disabled');
                $("#sub_password_info").text('Please wait.');
                form.submit();
            }
        });
    });
</script>
