@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Static Pages List</h1>
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

                            </div>
                        </div>

                        <table id="" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sr. No.</th>

                                    <th>
                                        <a href="{{url('admin/pages_list')}}?search={{request('search')}}&field=title&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Page Title &nbsp;<i class="fa fa-sort-alpha-{{request('field','title')=='title'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a>
                                    </th>
                                    <th>
                                        Page Slug
                                    </th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                @foreach($arr_pages  as $page)
                                <tr>

                                    <td>{{ $i }}.</td>
                                    <td>{{ $page->title }}</td>
                                    <td>{{ $page->slug }}</td>
                                    <td width="10%">
                                        <div class="btn-group">
                                            <a href="{{ url('admin/page_setting',$page->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-success" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
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
                        {{ $arr_pages->links() }}
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