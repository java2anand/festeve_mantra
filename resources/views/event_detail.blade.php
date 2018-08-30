<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <link href="{{asset('ws/css/star-rating.min.css')}}" rel="stylesheet">

        <!-- header -->
        @include('header')
        <!-- header ends -->

        <!-- evnt page content section -->
        <div class="event1_top_bg_section" style="background-image: url('{{ asset( 'images/event/top_banner/'.$event->event_top_banner )}}')">
            <div class="container event_2_container">
                <div class="event_topbanner_info">
                    <h3>{{ $event->title }}</h3>
                    <p class="event_topbanner_info_text"> {{ date('dS F',strtotime($event->start_date)) }} - {{ date('dS F',strtotime($event->end_date)) }},   {{ date('h:i A',strtotime($event->start_time)) }} </p>
                    <p class="event_topbanner_info_text">{{$event->event_location.', '.$event->event_address}}</p>
                    <div>
                        <ul class="event_follow_ul">
                            <li><input id="input-1" name="input-1" class="rating rating-loading" data-min="0" data-max="5" data-step="0.1" value="4"></li>
                            <li> <a href="#"><img src="{{asset('ws/images/user_follow.svg')}}">  554</a></li>
                            <li> <button class="follow_btn"><img src="{{asset('ws/images/follow.svg') }}"> Follow</button></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>


        <div class="container event_content_section_outer">
            <div class="row">
                <div class="col-md-9 col-sm-8 col-xs-12 event_content_left"><!-- left section -->
                    <div class="row">

                        <div class="col-xs-12">
                            <div class="event_inner_section event_text">
                                <h1 class="home_section_heading"><span>Description</span> About Event</h1>
                                {!! $event->description !!}

                            </div>
                        </div>
                    </div>


                    @if(count($speaker)>0)
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="event_inner_section">
                                    <h3 class="home_section_heading"><span>Speakers</span></h3>

                                        @foreach($speaker as $spkr)
                                        <div class="event2_spearkers_outer">
                                            <img src="{{asset('images/speaker/'.$spkr->image)}}" class="img-responsive event_organiser_pic">
                                            <p class="founder_name">{{$spkr->speaker_name}}</p>
                                            <p class="founder_designation">{{$spkr->title}}</p>
                                            <p class="founder_info event_text">{!! $spkr->description !!}</p>
                                        </div>
                                        @endforeach
                                </div>
                            </div>
                        </div>
                    @endif

                    <!-- new section added -->
                    <div class="row"><!-- Schedule  section -->
                        <div class="col-xs-12">
                            <div class="event_inner_section event_text">
                                <h1 class="home_section_heading"><span>Schedule </span></h1>
                                <!-- tabs -->
                                <div>
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs event_schedule_tabs" role="tablist">
                                        @php ($i = 1)
                                        @foreach($arr_schedule as $k=>$sch)
                                            <li role="presentation" class="{{{ $i==1 ? 'active': '' }}}"><a href="#day{{$k}}" aria-controls="day{{$k}}" role="tab" data-toggle="tab"><span>{{ date('F d',strtotime($k)) }}</span><br>{{ date('l', strtotime($k)) }}</a></li>
                                        @php ($i++)
                                        @endforeach
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content event_schedule_tabs_content">
                                        @php ($i = 1)
                                        @foreach($arr_schedule as $k=>$sch)
                                        <div role="tabpanel" class="tab-pane {{{ $i==1 ? 'active': '' }}}" id="day{{$k}}">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <ul>
                                                        @foreach($sch as $date)
                                                        <li>
                                                            <span class="sec_left_section">
                                                            {{ date('h:iA',strtotime($date->from_time)).' - '. date('h:iA',strtotime($date->to_time))}}
                                                            </span>
                                                            <span class="sec_right_section">{{$date->title }}</span>
                                                        </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        @php ($i++)
                                        @endforeach

                                    </div>

                                </div>


                                <!-- tabs ends -->

                            </div>
                        </div>
                    </div><!-- Schedule section ends -->

                    <div class="row"><!-- about organisers -->
                        <div class="col-xs-12">
                            <div class="event_inner_section event_text">
                                <h3 class="home_section_heading"><span>About</span> the Organiser</h3>
                                {!! $organiser->description !!}

                            </div>
                        </div>
                    </div> <!-- about organisers ends -->

                    <!-- new section ends -->

                </div><!-- left section ends -->
                <div class="col-md-3 col-sm-4 col-xs-12"><!-- right section -->
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <div class="event_right_top_inner event_filled_bg">
                                <h4>
                                    <img src="{{asset('ws/images/tick_circle.jpg')}}"> Remind me!
                                </h4>
                                <p>Get Reminder & special offers</p>
                            </div>
                            <div class="event_right_top_inner event_white_bg">
                                <a href="{{ $event->ticket_url }}" target="_blank"><img src="{{asset('ws/images/ticket.jpg')}}"></a>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner">
                                <h5>Location</h5>
                                <p>{{$event->event_location.', '.$event->event_address}}</p>
                                <h5>Start Time</h5>
                                <p>{{ date('d F Y',strtotime($event->start_date)) }} -   {{ date('h:i A',strtotime($event->start_time)) }}</p>
                            </div>
                        </div>
                    </div>

                    <div class="row"> <!-- new ads section -->
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner event_page_ads">
                                <a href="#">
                                    <img src="{{ asset( 'images/event/'.$event->event_image )}}" class="img-responsive" alt="adsvertise banner">
                                </a>
                            </div>
                        </div>
                    </div> <!-- ads section ends -->

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner">
                                <h5>Nearby Festivals</h5>
                                <p class="event_near_by_festivals">
                                    <a href="#">Philadelphia</a>
                                    <a href="#">Brooklyn</a>
                                    <a href="#">New York</a>
                                    <a href="#">Baltimore</a>
                                    <a href="#">Delhi</a>
                                    <a href="#"> Washington</a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner">
                                <h5>Official Festival Links</h5>
                                <p  class="event_social_links">
                                    <a href="{{ $event->website_url }}" target="_blank"><img src="{{asset('ws/images/link.png')}}"></a>
                                    <a href="{{ $event->facebook_id }}" target="_blank"><img src="{{asset('ws/images/facebook.png')}}"></a>
                                    <a href="{{ $event->twitter_id }}" target="_blank"><img src="{{asset('ws/images/twitter.png')}}"></a>
                                    <a href="{{ $event->facebook_id }}" target="_blank"><img src="{{asset('ws/images/youtube.png')}}"></a>
                                    <a href="{{ $event->instagram_id }}" target="_blank"><img src="{{asset('ws/images/instagram.png')}}"></a>
                                </p>
                            </div>
                        </div>
                    </div>


                </div>


            </div>

        </div>


        <!-- event page content section ends -->

        @if(count($arr_similar_event)>0)
        <div class="event_page_latest_list"><!-- stories outer -->
            <div class="container">
                <div class="row">
                    <h3 class="home_section_heading text-center"><span>Similar </span>events for you</h3>
                    <p class="text-center heading_seprator">
                        <span></span>
                    </p>
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($arr_similar_event as $s_event)
                            <div class="swiper-slide">
                                <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="#"><img src="{{ asset( 'images/event/'.$s_event->event_image )}}" alt="event banner"></a>
                                        </div>
                                        <div class="upcoming_item_info">
                                            <p class="uc_event_name"><a href="{{ url('event-detail/'.$s_event->slug )}}">{{ $s_event->title }}</a></p>
                                            <p class="uc_event_date">{{ date('F dS, Y',strtotime($s_event->start_date)) }}</p>
                                            <p class="uc_event_link"><a href="{{ url('event-detail/'.$s_event->slug )}}">View Event</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination" style="position:relative"></div>
                    </div>

                </div>
            </div>
        </div><!-- stories outer -->

        @endif

        <!-- footer -->
        @include('footer')
        <!-- footer ends -->

        <script src="{{asset('ws/js/star-rating.min.js')}}"></script>
        <!-- Initialize Swiper -->
        <script>
    if ($(window).width() > 766) {
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            spaceBetween: 0,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
        });
    } else {
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 1,
            spaceBetween: 0,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
        });

    }

    $(document).ready(function () {

        $('.mobile_nav_section button').click(function () {
            $('.nav_desktop').addClass('listing_page_sidebar_active');
            $('body').removeClass('body_overflow');
            $('.moblie_header_overlay').show();

        })

        $('.moblie_header_overlay').click(function () {
            $('.nav_desktop').removeClass('listing_page_sidebar_active');
            $('body').removeClass('body_overflow');
            $('.moblie_header_overlay').hide();

        })


    })
        </script>
    </body>
</html>