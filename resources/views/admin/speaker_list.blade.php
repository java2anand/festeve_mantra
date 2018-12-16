@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Speaker List</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
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
                                                <input class="form-control" id="search" value="{{ request('search') }}" placeholder="Search speaker" name="search" type="text" id="search"/>
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
                                    <a href="{{url('admin/speaker_add')}}" class="btn btn-primary">Add New</a>
                                </div>
                            </div>
                        </div>



                        <table id="" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sr. No.</th>
                                    <th><a href="{{url('admin/speaker_list')}}?search={{request('search')}}&field=speaker_name&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Speaker Name &nbsp;<i class="fa fa-sort-alpha-{{request('field','speaker_name')=='speaker_name'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a></th>
                                    <th>Image</th>
                                    <th><a href="{{url('admin/speaker_list')}}?search={{request('search')}}&field=created_at&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Added Date &nbsp<i class="fa fa-sort-numeric-{{request('field','created_at')=='created_at'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a></th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                @foreach($arrSpeaker  as $speaker)
                                <tr>

                                    <td>{{ $i }}.</td>
                                    <td>{{ $speaker->speaker_name}}</td>
                                    <td><img src="{{ asset( 'images/speaker/'.$speaker->image)}}" width="50px" height="50px" alt="speaker"/></td>
                                    <td>{{ $speaker->created_at}}</td>
                                    <td>
                                        <?= $speaker->status == 1 ? 'Active' : 'Inactive';  ?>
                                    </td>
                                    <td width="10%">
                                        <div class="btn-group">
                                            <a href="{{ url('admin/speaker_add',$speaker->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-success" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                        </div>
                                        <div class="btn-group">
                                            <a href="{{ url('admin/speaker_delete',$speaker->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete? ')" data-original-title="Delete"><i class="fa fa-times"></i></a>
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
                        {{ $arrSpeaker->links() }}
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

