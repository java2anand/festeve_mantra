<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <div class="container-fluid static_top_banner">
            <div class="row">
                <div  class="col-xs-12 text-center">
                    <h1>Kickstart Your Happening Carrer With Us</h1>
                </div>
            </div>
        </div>

        <div class="container job_page_content">
            <div class="row">
                <h3 class="col-xs-12 text-center">Open Positions</h3>
                <div class="col-xs-12">
                    <!-- job listing -->
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                    @php $i=0 @endphp
                    @if(count($arr_openings)>0)
                        @foreach($arr_openings as $opening)
                        <div class="panel panel-default">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$i}}" aria-expanded="true" aria-controls="collapse{{$i}}">
                                <div class="panel-heading active_title" role="tab" id="heading{{$i}}">
                                    <h4 class="panel-title">
                                        {{ $opening->position.' ('.$opening->total_opening.')' }}
                                    </h4>
                                </div>
                            </a>
                            <div id="collapse{{$i}}" class="panel-collapse collapse {{ $i==0 ? 'in': ''}}" role="tabpanel" aria-labelledby="heading{{$i}}">
                                <div class="panel-body">

                                    <div class="row"><!-- job details -->
                                        <div class="col-xs-12">
                                            {!! $opening->requirement !!}
                                        </div>
                                    </div> <!-- job details ends -->
                                    <div class="row"><!-- form -->
                                        <form>
                                            <div class="col-md-4 col-sm-6 col-xs-12 job_input_fileds">
                                                <input type="text" class="form-control" placeholder="Name">
                                            </div>
                                            <div class="col-md-4 col-sm-6 col-xs-12 job_input_fileds">
                                                <input type="email" class="form-control"  placeholder="Email Id">
                                            </div>
                                            <div class="col-md-2 col-sm-6 col-xs-12 job_input_fileds">
                                                <label for="exampleInputFile" class="add_cv">Attach CV</label>
                                                <input type="file" class="add_cv_input" id="exampleInputFile">
                                            </div>
                                            <div class="col-md-2 col-sm-6 col-xs-12 job_input_fileds">
                                                <button type="submit" class="btn btn-default">Apply</button>
                                            </div>
                                        </form>
                                    </div> <!-- form ends  -->

                                </div>
                            </div>
                        </div>
                        @php $i++ @endphp
                        @endforeach
                    @else
                    <h3 class="col-xs-12 text-center">Currently No Vacany Available!</h3>
                    @endif
                    </div>

                    <!-- job listing ends -->

                </div>
            </div>
        </div>

        <!-- footer -->
        @include('footer')

        <!-- footer ends -->
    </body>
</html>