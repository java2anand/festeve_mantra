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
                                <div class="col-md-10 pull-left">

                                    {!! Form::open(['method'=>'get']) !!}
                                    <div class="row">
                                        <div class="col-sm-4 form-group">
                                            <div class="input-group">
                                                <input class="form-control" id="search" value="{{ request('search') }}" placeholder="Search name" name="search" type="text" id="search"/>
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
                                <div class="col-md-2">
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
                                            <th>
                                                <a href="{{url('admin/category_list')}}?search={{request('search')}}&field=category_name&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Category Name</a>
                                                <i class="fa fa-sort-alpha-{{request('field','category_name')=='category_name'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i>
                                            </th>
                                            <th>Category Url</th>
                                            <th>
                                                <a href="{{url('admin/category_list')}}?search={{request('search')}}&field=created_at&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Added Date</a>
                                                <i class="fa fa-sort-numeric-{{request('field','created_at')=='created_at'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i>
                                            </th>
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