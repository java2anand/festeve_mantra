@include('admin.admin-header')
@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Site Setting</h1>
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
                    <!-- form start -->

                    {!! Form::open([
                        'url' => ['admin/site_setting', $site_setting->id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'site_setting',
                    ]) !!}

                        <div class="box-body">
                            <div class="form-group">
                                <label for="company_title">Company Title*</label>
                                <input type="text" class="form-control" id="company_title" name="company_title" placeholder="Enter Company Title" value="<?= (isset($site_setting->company_title) && !empty($site_setting->company_title)) ? $site_setting->company_title : old('company_title') ?>">
                                <span class="error"><?php if ($errors->has('company_title')) { echo $errors->first('company_title');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" id="address" name="address" placeholder="Enter Address" value="<?= (isset($site_setting->address) && !empty($site_setting->address)) ? $site_setting->address : old('address') ?>">
                                <span class="error"><?php if ($errors->has('address')) { echo $errors->first('address');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="phone_number">Phone Number</label>
                                <input type="text" class="form-control" id="phone_number" name="phone_number" placeholder="Enter Phone Number" value="<?= (isset($site_setting->phone_number) && !empty($site_setting->phone_number)) ? $site_setting->phone_number : old('phone_number') ?>">
                                <span class="error"><?php if ($errors->has('phone_number')) { echo $errors->first('phone_number');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="mobile_number">Mobile Number</label>
                                <input type="text" class="form-control" id="mobile_number" name="mobile_number" placeholder="Enter Mobile Number" value="<?= (isset($site_setting->mobile_number) && !empty($site_setting->mobile_number)) ? $site_setting->mobile_number : old('mobile_number') ?>">
                                <span class="error"><?php if ($errors->has('mobile_number')) { echo $errors->first('mobile_number');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="contact_email">Contact Email</label>
                                <input type="text" class="form-control" id="contact_email" name="contact_email" placeholder="Enter Email" value="<?= (isset($site_setting->contact_email) && !empty($site_setting->contact_email)) ? $site_setting->contact_email : old('contact_email') ?>">
                                <span class="error"><?php if ($errors->has('contact_email')) { echo $errors->first('contact_email');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="facebook_id">Facebook Id</label>
                                <input type="text" class="form-control" id="facebook_id" name="facebook_id" placeholder="Enter facebook id" value="<?= (isset($site_setting->facebook_id) && !empty($site_setting->facebook_id)) ? $site_setting->facebook_id: old('facebook_id') ?>">
                                <span class="error"><?php if ($errors->has('facebook_id')){ echo $errors->first('facebook_id'); } ?></span>
                            </div>

                            <div class="form-group">
                                <label for="twitter_id">Twitter Id</label>
                                <input type="text" class="form-control" id="twitter_id" name="twitter_id" placeholder="Enter Twitter Id" value="<?= (isset($site_setting->twitter_id) && !empty($site_setting->twitter_id)) ? $site_setting->twitter_id: old('twitter_id') ?>">
                                <span class="error"><?php if ($errors->has('twitter_id')){ echo $errors->first('twitter_id'); } ?></span>
                            </div>

                            <div class="form-group">
                                <label for="linked_id">Linked Id</label>
                                <input type="text" class="form-control" id="linked_id" name="linked_id" placeholder="Enter LinkedIn Id" value="<?= (isset($site_setting->linked_id) && !empty($site_setting->linked_id)) ? $site_setting->linked_id: old('linked_id') ?>">
                                <span class="error"><?php if ($errors->has('linked_id')){ echo $errors->first('linked_id'); } ?></span>
                            </div>

                            <div class="form-group">
                                <label for="instagram_id">Instagram Id</label>
                                <input type="text" class="form-control" id="instagram_id" name="instagram_id" placeholder="Enter Instagram Id" value="<?= (isset($site_setting->instagram_id) && !empty($site_setting->instagram_id)) ? $site_setting->instagram_id: old('instagram_id') ?>">
                                <span class="error"><?php if ($errors->has('instagram_id')){ echo $errors->first('instagram_id'); } ?></span>
                            </div>

                            <div class="form-group">
                                <label for="googleplus_id">Googleplus Id</label>
                                <input type="text" class="form-control" id="googleplus_id" name="googleplus_id" placeholder="Enter Google Plus Id" value="<?= (isset($site_setting->googleplus_id) && !empty($site_setting->googleplus_id)) ? $site_setting->googleplus_id: old('googleplus_id') ?>">
                                <span class="error"><?php if ($errors->has('descgoogleplus_idription')){ echo $errors->first('googleplus_id'); } ?></span>
                            </div>

                            <div class="form-group">
                                <label for="logo">Company Logo</label>
                                <input type="file" class="form-control" id="logo" name="logo" >
                                <span class="error"></span>
                                <input type="hidden" name="old_logo" value="<?= (isset($site_setting->logo) && !empty($site_setting->logo)) ? $site_setting->logo: '' ?>" />

                                <?php
                                    if (file_exists( public_path() . '/images/logo/thumb/' . $site_setting->logo)) {?>
                                        <img src="{{ asset( 'public/images/logo/thumb/'.$site_setting->logo)}}" />
                                <?php }?>
                            </div>


                        </div>
                        <!-- /.card-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Update</button>
                            <a href="{{ route('admin.newsletter_list') }}" class="btn btn-danger">Cancel</a>

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
    $("#site_setting").validate({
        errorElement: 'span',
        rules: {
            company_title: {
                required: true,
            },
        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
</script>
