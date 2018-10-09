@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Contact Us List</h1>
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
                                                <input class="form-control" id="search" value="{{ request('search') }}" placeholder="Search Email" name="search" type="text" id="search"/>
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


                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>Sr. No.</th>
                                    <th><a href="{{url('admin/queries_list')}}?search={{request('search')}}&field=email&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Email &nbsp;<i class="fa fa-sort-alpha-{{request('field','email')=='email'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a></th>
                                    <th>Name</th>
                                    <th>Mobile</th>
                                    <th>City</th>
                                    <th>Company Name</th>
                                    <th>Enquiry Title</th>

                                    <th><a href="{{url('admin/queries_list')}}?search={{request('search')}}&field=created_at&sort={{request('sort','asc')=='asc'?'desc':'asc'}}">Enquiry Date &nbsp<i class="fa fa-sort-numeric-{{request('field','created_at')=='created_at'?(request('sort','asc')=='asc'?'asc':'desc'):'asc'}}"></i></a></th>
                                    <th>View</th>

                                </tr>
                                <?php
                                $i = 1;
                                $arr_option = config('constant.contact_us_option');
                                ?>
                                @foreach($arrQueries  as $data)
                                <tr>
                            <input type='hidden' id='full_msg_{{$i}}' value='{{$data->message}}' />
                            <td>{{ $i }}.</td>

                            <td>{{ $data->email}}</td>
                            <td>{{ $data->name}}</td>
                            <td>{{ $data->mobile}}</td>
                            <td>{{ $data->city}}</td>
                            <td>{{ !empty($data->company_name) ? $data->company_name : 'N/A'}}</td>
                            <td><?php foreach ($arr_option as $k => $opt) {
                                    if ($k == $data->title_id) {
                                        echo $opt;
                                    }
                                } ?></td>
                            <td>{{ date('d-m-Y',strtotime($data->created_at))}}</td>
                            <td><button onclick='show_message({{$i}})' class='btn btn-sm btn-success'><i class='fa fa-eye'></i></button></td>


                            </tr>
<?php $i++; ?>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        {{ $arrQueries->links() }}
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

<!-- Modal Start -->
<div class="modal fade" id="show_msg" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content" id="home_page_popup_id">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times"></i></button>
                <h2 class="modal-title text-center">Add Advertisement</h2>
            </div>
            <div class="modal-body">
                <div class="row home_page_popup">

                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" name="action" class="btn btn-danger"  data-dismiss="modal">OK</button>
            </div>

        </div>

    </div>
</div>
<!-- /.Modal End -->

@include('admin/admin-footer')
<script>
    function show_message(id){
        $("#show_msg .modal-title").html('Queries Detail');
        $("#show_msg .modal-body").html($("#full_msg_"+id).val());
        $("#show_msg").modal();
    }
</script>

