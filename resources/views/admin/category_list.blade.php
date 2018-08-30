@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Category List</h1>
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
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-4 pull-left">
                                    {!! Form::open([
                                    'url' => ['admin/category_list'],'id' => 'search_form',
                                    ]) !!}

                                    <div class="col-md-9">
                                        <input type="text" name="search" id="search" class="form-control" value="{{ $search_term }}" placeholder="Type and search.." />
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-primary">
                                            Search
                                        </button>
                                    </div>
                                    </form>
                                </div>
                                <div class="col-md-2 col-md-offset-6">
                                    <a href="{{url('admin/category_add')}}" class="btn btn-primary">Add New</a>
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <?php if (count($arrCategory) > 0) { ?>
                                    <tbody>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Category Name</th>
                                            <th>Category Url</th>
                                            <th>Added Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                        @php $i = 1; @endphp
                                        @foreach($arrCategory  as $cat)
                                        <tr>

                                            <td>{{ $i }}.</td>
                                            <td>{{ $cat->category_name}}</td>
                                            <td><a href="{{ url('event-category/'.$cat->slug)}}" target="_blank">Visit Website</a></td>
                                            <td>{{ date('d-m-Y',strtotime($cat->created_at)) }}</td>
                                            <td>
                                                <?= $cat->status == 1 ? 'Active' : 'Inactive'; ?>
                                            </td>
                                            <td width="10%">
                                                <div class="btn-group">
                                                    <a href="{{ url('admin/category_add',$cat->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-success" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                </div>
                                                <div class="btn-group">
                                                    <a href="{{ url('admin/category_delete',$cat->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete? ')" data-original-title="Delete"><i class="fa fa-times"></i></a>
                                                </div>


                                            </td>
                                            <?php $i++; ?>
                                        </tr>
                                        @endforeach

                                    </tbody>
                                <?php } else { ?>
                                    <p class="text-center">No Category found.</p>
                                <?php } ?>

                            </table>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        {{ $arrCategory->links() }}
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