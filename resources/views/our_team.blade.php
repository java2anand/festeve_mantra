<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <div class="container-fluid static_top_banner team_top_banner">
            <div class="row">
                <div  class="col-xs-12 text-center">
                    <h1>The Festeve Team</h1>
                    <p class="team_subheading">We are enthusiasts connecting right audience with right events!</p>
                </div>
            </div>
        </div>

        <div class="container team_page_content">
            <div class="row team_section1"> <!-- team section 1 -->
                <div class="col-xs-12">
                    {!! $page_data->content !!}
                    <h3 class="home_section_heading text-center">Have a <span>Query?</span></h3>
                    <p class="text-center cont_info">Reach us at <img src="{{ asset('ws/images/mail.png')}}">
                        <a href="mailto:{{$sitedata['contact_email']}}">{{$sitedata['contact_email']}}</a>
                        Or Call at
                        <img src="{{ asset('ws/images/call.png')}}">  <a href="tel:{{$sitedata['mobile_number']}}">+91-{{$sitedata['mobile_number']}}</a></p>

                </div>
            </div><!-- team section 1 ends -->

            <div class="row team_section2"> <!-- team section 2 -->
                <h3 class="home_section_heading text-center col-xs-12">Minds behind<span> festeve mantra</span> - The FestEventors</h3>

                @if(count($arr_ceo)>0)
                    @foreach($arr_ceo as $ceo)
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-5 col-xs-5">
                                @if(isset($ceo->image) && !empty($ceo->image) && file_exists(public_path() . '/images/employee/' . $ceo->image))
                                    <img class="img-responsive" src="{{ asset( 'images/employee/'.$ceo->image)}}" alt="employee">
                                @else
                                    <img class="img-responsive" src="{{ asset( 'images/employee/no_employee.png')}}" alt="employee">
                                @endif
                                <p class="team_social_links text-center">
                                    <a href="{{$ceo->facebook_id}}"><img src="{{ asset('ws/images/facebook-logo.png')}}"></a>
                                    <a href="{{$ceo->twitter_id}}"><img src="{{ asset('ws/images/twitter-logo-silhouette.png')}}"></a>
                                    <a href="{{$ceo->googleplus_id}}"><img src="{{ asset('ws/images/google-plus.png')}}"></a>
                                    <a href="{{$ceo->instagram_id}}"><img src="{{ asset('ws/images/instagram-logo.png')}}"></a>
                                </p>
                            </div>
                            <div class="col-sm-7 col-xs-7 left_no_padding">
                                <p class="founder_name">{{$ceo->name}}</p>
                                <p class="founder_designation">{{$ceo->designation}}</p>
                                <p class="seprator_colored_line"><span></span></p>
                                {!! $ceo->about !!}
                            </div>
                        </div>
                    </div>
                    @endforeach
                @endif

            </div><!-- team section 2 ends -->


            <div class="row team_section2 core_team_section"> <!-- team section 3 -->
                <h3 class="home_section_heading text-center col-xs-12">Minds behind<span> festeve mantra</span> - Behind The Scenes</h3>
                @if(count($arr_emp)>0)
                    @foreach($arr_emp as $emp)
                    <div class="col-sm-4 col-xs-12 core_member">
                        <div class="row">
                            <div class="col-sm-5 col-xs-5">
                                @if(isset($emp->image) && !empty($emp->image) && file_exists(public_path() . '/images/employee/' . $emp->image))
                                    <img class="img-responsive" src="{{ asset( 'images/employee/'.$emp->image)}}" class="img-responsive" alt="employee">
                                @else
                                    <img class="img-responsive" src="{{ asset( 'images/employee/no_employee.png')}}" class="img-responsive" alt="employee">
                                @endif
                            </div>
                            <div class="col-sm-7 col-xs-7 left_no_padding">
                                <p class="founder_name">{{$emp->name}}</p>
                                <p class="founder_designation">{{$emp->designation}}</p>
                                <p class="seprator_colored_line"><span></span></p>
                                <p class="team_social_links">
                                    <a href="{{$emp->facebook_id}}"><img src="{{ asset('ws/images/facebook-logo.png')}}"></a>
                                    <a href="{{$emp->twitter_id}}"><img src="{{ asset('ws/images/twitter-logo-silhouette.png')}}"></a>
                                    <a href="{{$emp->googleplus_id}}"><img src="{{ asset('ws/images/google-plus.png')}}"></a>
                                    <a href="{{$emp->instagram_id}}"><img src="{{ asset('ws/images/instagram-logo.png')}}"></a>
                                </p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                @endif
            </div><!-- team section 3 ends -->

            <div class="row team_section4"> <!-- team section 4 -->
                <div class="col-xs-12 text-center">
                    <h3 class="home_section_heading">Interested to join us</h3>
                    <p>We need great peoples to work with us</p>
                    <p>Wish to join the most happening team of eventors?<a href="{{url('careers')}}">Join Now</a></p>
                </div>
            </div> <!-- team section 4 ends -->
        </div>


        <!-- footer -->
        @include('footer')
        <!-- footer ends -->
    </body>
</html>