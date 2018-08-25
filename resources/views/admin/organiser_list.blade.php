@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Organiser List</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                    @if(Session::has('alert-' . $msg))
                        <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                    @endif
                @endforeach
            </div>
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sr. No.</th>
                                    <th>Organiser Name</th>
                                    <th>Organiser Title</th>
                                    <th>Added Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                @foreach($arrOrganiser  as $organiser)
                                <tr>

                                    <td>{{ $i }}.</td>
                                    <td>{{ $organiser->name}}</td>
                                    <td>{{ $organiser->organiser_title }}</td>
                                    <td>{{ $organiser->created_at}}</td>
                                    <td>
                                        <?= $organiser->status == 1 ? 'Active' : 'Inactive';  ?>
                                    </td>
                                    <td width="10%">
                                        <div class="btn-group">
                                            <a href="{{ url('admin/organiser_add',$organiser->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-success" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                        </div>
                                        <div class="btn-group">
                                            <a href="{{ url('admin/eventorganiser_delete',$organiser->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete? ')" data-original-title="Delete"><i class="fa fa-times"></i></a>
                                        </div>


                                    </td>
                                    <?php $i++; ?>
                                </tr>
                                @endforeach
                            </tbody>

                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        {{ $arrOrganiser->links() }}
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
@include('admin/admin-footer')

