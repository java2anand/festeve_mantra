<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->

        <!-- top list category -->
        <div class="container top_list_categories">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12 text-center">
                    <h1>Some of Our Popular Categories</h1>
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($popular_category as $pcat)
                                <div class="swiper-slide">
                                    <a href="{{ url('event-category/'.$pcat->slug) }}">
                                        <img src="{{ asset('ws/images/top_category.jpg')}}">
                                        <p>{{ $pcat->category_name }}</p>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination" style="position:relative"></div>
                    </div>

                </div>
            </div>
        </div>
        <!-- ends -->

        <!-- All categories section -->
        <div class="container list_cat_section">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h2>Browse All Our Categories</h2>
                    <p>Find your interets by browsing our festeve categories</p>
                    <ul>
                        @foreach($arr_category as $cat)
                        <li>
                            <a href="{{ url('event-category/'.$cat->slug) }}">
                                <img src="{{ asset('ws/images/new_icon1.png')}}"><br>
                                {{ $cat->category_name }}
                            </a>
                        </li>
                        @endforeach

                    </ul>
                </div>
            </div>
        </div>
        <!-- all categories section ends -->

        <!-- add event -->
        <div class="container cat_list_add_event">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <span>Create Event & Drive more attendees with Festeve Mantra</span> <a href="#">GET STARTED</a>
                </div>
            </div>
        </div>
        <!-- add event ends -->


        <div class="event_page_latest_list"><!-- stories outer -->
            <div class="container">
                <div class="row">
                    <h3 class="home_section_heading text-center"><span>Trending </span>events in Delhi</h3>
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
                                            <a href="#"><img src="{{ asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
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
                                            <a href="#"><img src="{{ asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
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
                                            <a href="#"><img src="{{ asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
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
                                            <a href="#"><img src="{{ asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
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
                                            <a href="#"><img src="{{ asset('ws/images/upcoming_event_banner.jpg')}}" alt="event banner"></a>
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

        <!-- Initialize Swiper -->
        <script>
            if ($(window).width() > 766) {
                var swiper = new Swiper('.event_page_latest_list .swiper-container', {
                    slidesPerView: 3,
                    spaceBetween: 0,
                    pagination: {
                        el: '.event_page_latest_list .swiper-pagination',
                        clickable: true,
                    },
                });
            } else {
                var swiper = new Swiper('.event_page_latest_list .swiper-container', {
                    slidesPerView: 1,
                    spaceBetween: 0,
                    pagination: {
                        el: '.event_page_latest_list .swiper-pagination',
                        clickable: true,
                    },
                });
            }

            if ($(window).width() > 766) {
                var swiper = new Swiper('.top_list_categories .swiper-container', {
                    slidesPerView: 5,
                    spaceBetween: 10,
                    pagination: {
                        el: '.top_list_categories .swiper-pagination',
                        clickable: true,
                    },
                });
            } else {
                var swiper = new Swiper('.top_list_categories .swiper-container', {
                    slidesPerView: 2,
                    spaceBetween: 0,
                    pagination: {
                        el: '.top_list_categories .swiper-pagination',
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