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
                    @include('admin.admin-error')
                    <!-- /.box-header -->
                    <!-- form start -->

                    {!! Form::open([
                        'url' => ['admin/site_setting/'.$site_setting->id],
                        'enctype' => 'multipart/form-data',
                        'id' => 'site_setting',
                    ]) !!}

                        <div class="box-body">


                            <div class="form-group">
                                <label for="var_title">Setting Keyword</label>
                                <input type="text" class="form-control" id="var_title" name="var_title" placeholder="Enter Keyword" value="<?= (isset($site_setting->var_title) && !empty($site_setting->var_title)) ? $site_setting->var_title : old('var_title') ?>">
                                <span class="error"><?php if ($errors->has('var_title')) { echo $errors->first('var_title');
} ?></span>
                            </div>

                            <div class="form-group">
                                <label for="var_value">Setting Value</label>
                                <input type="text" class="form-control" id="var_value" name="var_value" placeholder="Enter Value" value="<?= (isset($site_setting->var_value) && !empty($site_setting->var_value)) ? $site_setting->var_value : old('var_value') ?>">
                                <span class="error"><?php if ($errors->has('var_value')) { echo $errors->first('var_value');
} ?></span>
                            </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Update</button>
                            <a href="{{ route('admin.setting_list') }}" class="btn btn-danger">Cancel</a>

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
