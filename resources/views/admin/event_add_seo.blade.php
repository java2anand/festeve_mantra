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
                    'url' => ['admin/event_add_seo', $event_id],

                    'id' => 'event_add_seo_form',
                    ]) !!}


                    <input type="hidden" name="seo_id"  value="<?= (isset($event->seo->id) && !empty($event->seo->id)) ? $event->seo->id : '' ?>"  />


                    <div class="box-body">

                        <div class="form-group col-sm-12">
                            <label for="meta_keyword">Meta Keyword</label>
                            <input type="text" class="form-control" id="meta_keyword" name="meta_keyword"  value="<?= (isset($event->seo->meta_keyword) && !empty($event->seo->meta_keyword)) ? $event->seo->meta_keyword : old('meta_keyword') ?>">
                            <span class="error"><?php if ($errors->has('meta_keyword')) {
    echo $errors->first('meta_keyword');
} ?></span>
                        </div>


                        <div class="form-group col-sm-12">
                            <label for="meta_description">Meta Description</label>
                            <input type="text" class="form-control" id="meta_description" name="meta_description"  value="<?= (isset($event->seo->meta_description) && !empty($event->seo->meta_description)) ? $event->seo->meta_description : old('meta_description') ?>">
                            <span class="error"><?php if ($errors->has('meta_description')) { echo $errors->first('meta_description'); } ?></span>
                        </div>

                        <div style="clear:both;"></div>

                        <div class="form-group col-sm-12">
                            <label for="page_title">Page Title</label>
                            <input type="text" class="form-control" id="page_title" name="page_title"  value="<?= (isset($event->seo->page_title) && !empty($event->seo->page_title)) ? $event->seo->page_title : old('page_title') ?>">

                            <span class="error"><?php if ($errors->has('page_title')) {
    echo $errors->first('page_title');
} ?></span>
                        </div>

                        <div style="clear:both;"></div>

                    </div>
                    <!-- /.card-body -->

                    <div class="box-footer">
                        <a href="{{ route('admin.event_add_address',$event_id) }}" class="btn btn-danger">Back</a>
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
