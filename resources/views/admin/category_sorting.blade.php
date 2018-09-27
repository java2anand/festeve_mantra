@include('admin.admin-header')

@include('admin.admin-sidebar')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Category Sorting</h1>
        <ol class="breadcrumb">
            <!--<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>-->
            <a href="{{url('admin/event_add')}}" class="btn btn-default pull-right">Add event</a>
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
                        <table id="table" class="table table-bordered">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Category Name</th>
                              </tr>
                            </thead>
                            <tbody id="tablecontents">
                              @foreach($arr_category as $cat)
                              <tr class="row1" data-id="{{ $cat->id }}">
                                <td>
                                  <div style="color:rgb(124,77,255); padding-left: 10px; float: left; font-size: 20px; cursor: pointer;" title="change display order">
                                  <i class="fa fa-ellipsis-v"></i>
                                  <i class="fa fa-ellipsis-v"></i>
                                  </div>
                                </td>
                                <td>{{ ($cat->parent_id == 0) ? ($cat->category_name) : '>>'.$cat->category_name }}</td>
                              </tr>
                              @endforeach
                            </tbody>
                          </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">

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
<script type="text/javascript" src="//code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
<script type="text/javascript">
  $(function () {

    $( "#tablecontents" ).sortable({
      items: "tr",
      cursor: 'move',
      opacity: 0.6,
      update: function() {
          sendOrderToServer();
      }
    });

    function sendOrderToServer() {

      var order = [];
      $('tr.row1').each(function(index,element) {
        order.push({
          id: $(this).attr('data-id'),
          position: index+1
        });
      });

      $.ajax({
        type: "POST",
        dataType: "json",
        url: "{{ url('admin/sortcategory') }}",
        data: {
          order:order,
          _token: '{{csrf_token()}}'
        },
        success: function(response) {
            if (response.status == "success") {
              console.log(response);
            } else {
              console.log(response);
            }
        }
      });

    }
  });

</script>