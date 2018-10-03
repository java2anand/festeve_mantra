@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Story List</h1>
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
                                                <input class="form-control" id="search" value="{{ request('search') }}" placeholder="Search story" name="search" type="text" id="search"/>
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
                                <?php if (count($arrStory) > 0) { ?>
                                    <tbody>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th><a href="{{url('admin/story_list')}}?search={{request('search')}}&field=story_name&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Story Name &nbsp;<i class="fa fa-sort-alpha-{{request('field','story_name')=='story_name'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a></th>
                                            <th>Category</th>
                                            <th>Author</th>
                                            <th><a href="{{url('admin/story_list')}}?search={{request('search')}}&field=created_at&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Added Date &nbsp<i class="fa fa-sort-numeric-{{request('field','created_at')=='created_at'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a></th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                        <?php $i = 1; ?>
                                        @foreach($arrStory  as $story)
                                        <tr>

                                            <td>{{ $i }}.</td>
                                            <td>{{ $story->story_name}}</td>
                                            <td>{{ $story->category->category_name}}</td>
                                            <td>{{ $story->author->name}}</td>
                                            <td>{{ date('d-m-Y',strtotime($story->created_at)) }}</td>
                                            <td>
                                                <?= $story->status == 1 ? 'Active' : 'Inactive'; ?>
                                            </td>
                                            <td width="10%">
                                                <div class="btn-group">
                                                    <a href="{{ url('admin/story_add',$story->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-success" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                </div>
                                                <div class="btn-group">
                                                    <a href="{{ url('admin/story_delete',$story->id) }}" data-toggle="tooltip" title="" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete? ')" data-original-title="Delete"><i class="fa fa-times"></i></a>
                                                </div>


                                            </td>
                                            <?php $i++; ?>
                                        </tr>
                                        @endforeach

                                    </tbody>
                                <?php } else { ?>
                                    <p>No Story found.</p>
                                <?php } ?>

                            </table>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        {{ $arrStory->links() }}
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