<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <link href="{{asset('ws/css/star-rating.min.css')}}" rel="stylesheet">

        <!-- header -->
        @include('header')
        <!-- header ends -->

        <!-- evnt page content section -->
        <div class="event1_top_bg_section">
            <div class="container event_2_container">
                <div class="event_topbanner_info">
                    <h3><?= $event->title ?></h3>
                    <p class="event_topbanner_info_text"><?= date('d F',strtotime($event->start_date)) ?> - <?= date('d F',strtotime($event->end_date)) ?>,   <?= date('h:i A',strtotime($event->start_time)) ?> </p>
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


                    <?php if(count($speaker)>0){ ?>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="event_inner_section">
                                    <h3 class="home_section_heading"><span>Speakers</span></h3>

                                    <?php foreach($speaker as $spkr){ ?>
                                        <div class="event2_spearkers_outer">
                                            <img src="{{asset('images/speaker/'.$spkr->image)}}" class="img-responsive event_organiser_pic">
                                            <p class="founder_name">{{$spkr->speaker_name}}</p>
                                            <p class="founder_designation">{{$spkr->title}}</p>
                                            <p class="founder_info event_text">{!! $spkr->description !!}</p>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    <?php } ?>

                    <!-- new section added -->
                    <div class="row"><!-- Schedule  section -->
                        <div class="col-xs-12">
                            <div class="event_inner_section event_text">
                                <h1 class="home_section_heading"><span>Schedule </span></h1>
                                <!-- tabs -->
                                <div>
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs event_schedule_tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#day1" aria-controls="day1" role="tab" data-toggle="tab"><span>August 22</span><br> Wednesday</a></li>
                                        <li role="presentation"><a href="#day2" aria-controls="day2" role="tab" data-toggle="tab"><span>August 22</span><br> Wednesday</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content event_schedule_tabs_content">
                                        <div role="tabpanel" class="tab-pane active" id="day1">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <ul>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                        <li>
                                                            <span class="sec_left_section">08:00 - 09:00 PM</span>
                                                            <span class="sec_right_section">Registration, morning coffee</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </div>


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
                                <p><?= date('d F Y',strtotime($event->start_date)) ?> -   <?= date('h:i A',strtotime($event->start_time)) ?></p>
                            </div>
                        </div>
                    </div>

                    <div class="row"> <!-- new ads section -->
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner event_page_ads">
                                <a href="#">
                                    <img src="{{asset('ws/images/upcoming_event_banner.jpg')}}" class="img-responsive" alt="adsvertise banner">
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

                            <div class="swiper-slide">
                                <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="#"><img src="{{asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
                                        </div>
                                        <div class="upcoming_item_info">
                                            <p class="uc_event_name"><a href="#">Latest Event Show in Jaipur</a></p>
                                            <p class="uc_event_date">Sep 12th 2018</p>
                                            <p class="uc_event_link"><a href="#">Read More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="#"><img src="{{asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
                                        </div>
                                        <div class="upcoming_item_info">
                                            <p class="uc_event_name"><a href="#">Latest Event Show in Jaipur</a></p>
                                            <p class="uc_event_date">Sep 12th 2018</p>
                                            <p class="uc_event_link"><a href="#">Read More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="#"><img src="{{asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
                                        </div>
                                        <div class="upcoming_item_info">
                                            <p class="uc_event_name"><a href="#">Latest Event Show in Jaipur</a></p>
                                            <p class="uc_event_date">Sep 12th 2018</p>
                                            <p class="uc_event_link"><a href="#">Read More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="#"><img src="{{asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
                                        </div>
                                        <div class="upcoming_item_info">
                                            <p class="uc_event_name"><a href="#">Latest Event Show in Jaipur</a></p>
                                            <p class="uc_event_date">Sep 12th 2018</p>
                                            <p class="uc_event_link"><a href="#">Read More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="#"><img src="{{asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
                                        </div>
                                        <div class="upcoming_item_info">
                                            <p class="uc_event_name"><a href="#">Latest Event Show in Jaipur</a></p>
                                            <p class="uc_event_date">Sep 12th 2018</p>
                                            <p class="uc_event_link"><a href="#">Read More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination" style="position:relative"></div>
                    </div>


                </div>
            </div>
        </div><!-- stories outer -->

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