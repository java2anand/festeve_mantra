<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <div class="moblie_filter_overlay"></div>
        <div class="container listing_page_width listing_page_top_section">
            <div class="row">
                <h1 class="col-xs-12 text-center home_section_heading"><span>Search</span></h1>
            </div>
            <div class="row mobile_filter_btn_outer">
                <div class="col-xs-12 text-right"><button class="mobile_filter_btn"><img src="{{asset('ws/images/filter.svg')}}"> Filter</button></div>
            </div>
        </div>

        <div class="container listing_page_width listing_page_list_outer">
            <div class="row">
                <div class="col-xs-12">
                    <ul>
                        <!-- left sidebar -->
                        <li class="listing_page_sidebar">
                            <!-- location filter -->
                            <div class="listing_left_sidebar_inner">
                                <form>
                                    <input type="text" class="location_filter_sidebar" placeholder="Location...">
                                </form>
                            </div>
                            <!-- location ends -->

                            <!-- category filter -->
                            <div class="listing_left_sidebar_inner list_filter_spacing">
                                <h4>Categories</h4>
                                <ul>
                                    @foreach($arr_category as $k=>$maincat)
                                    <li>
                                        <input type="checkbox" id="filter_{{$k}}">
                                        <label for="filter_{{$k}}" class="sub_category_dropdown">{{ $maincat->category_name }} <span><img src="{{asset('ws/images/down_arrow.jpg')}}"></span></label>
                                        <!-- sub categories  -->
                                        <ul class="category_sub_outer">
                                            @foreach($maincat->children as $key=>$childcat)
                                            <li>
                                                <input type="checkbox" id="filters_{{$k.$key}}">
                                                <label for="filters_{{$k.$key}}">{{ $childcat->category_name }}</label>
                                            </li>
                                            @endforeach
                                        </ul>
                                        <!-- sub categories ends -->
                                    </li>
                                    @endforeach

                                </ul>
                            </div>
                            <!-- category filter ends -->

                            <!-- Date filter -->
                            <div class="listing_left_sidebar_inner list_filter_spacing">
                                <h4>DATE</h4>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="filter_6">
                                        <label for="filter_6">All</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_7">
                                        <label for="filter_7">Today</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_8">
                                        <label for="filter_8">This Week</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_9">
                                        <label for="filter_9">This Weekend</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_10">
                                        <label for="filter_10">Next Week</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_11">
                                        <label for="filter_11">Next Month</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_12">
                                        <label for="filter_12" class="custom_date_search_form_label">Custom Date</label>
                                    </li>

                                    <li class="custom_date_search_form">
                                        <form>
                                            <label for="filter_sd">Start Date</label>
                                            <input type="text" id="filter_sd"  placeholder="10/01/2017">
                                            <label for="filter_ed">End Date</label>
                                            <input type="text" id="filter_ed"  placeholder="10/01/2017">
                                            <button type="submit">Update</button>
                                        </form>
                                    </li>

                                </ul>
                            </div>
                            <!-- Date ends -->



                        </li>
                        <!-- right sidebar -->
                        <!-- listing -->
                        <li class="listing_page_mid_section">

                            @if(count($arrevent)>0)
                                @foreach($arrevent as $event)
                                <div class="listing_page_mid_section_outer">
                                    <div class="listing_page_mid_section_left" style="background-image:url('{{ asset( 'images/event/'.$event->event_image )}}')">
                                        <a href="{{ url('event-detail/'.$event->slug )}}"></a>
                                    </div>
                                    <div class="listing_page_mid_section_right">
                                        <p class="listing_mid_category_date">
                                            <a href="{{ url('event-category/'.$event->category->slug )}}"><span class="listing_mid_category_span1">{{ $event->category->category_name }}</span></a>
                                            <span class="text-right">{{ date('F dS, Y',strtotime($event->start_date)) }} | Delhi</span>
                                        </p>
                                        <h3><a href="{{ url('event-detail/'.$event->slug )}}">{{ $event->title }}</a></h3>
                                        {!! $event->short_description !!}
                                        <p class="listing_mid_category_link"><a href="{{ url('event-detail/'.$event->slug )}}">View</a></p>
                                    </div>
                                </div>
                                @endforeach
                                <!-- pagignation -->
                                <div class="text-center list_pager_outer">
                                    {{ $arrevent->links() }}
                                    <!--<nav> <ul class="pagination"> <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li> <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li> <li><a href="#">2</a></li> <li><a href="#">3</a></li> <li><a href="#">4</a></li> <li><a href="#">5</a></li> <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li> </ul> </nav>-->
                                </div>
                                <!-- ends -->
                            @else
                                <div class="listing_page_mid_section_outer">
                                    <h2 class="text-center">No Event Found.</h2>
                                </div>
                            @endif

                        </li>
                        <!-- list ends -->
                        <!-- right sidebar -->
                        <li class="listing_page_right_sidebar"><a href="#"><img src="{{asset('ws/images/sidebar_ads.jpg')}}" alt="ads banner"></a></li>
                        <!-- right sidebar ends -->
                    </ul>
                </div>
            </div>
        </div>
        <!-- footer -->

        @include('footer')

        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper('.swiper-container', {
                slidesPerView: 3,
                spaceBetween: 0,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
            });

            $(document).ready(function () {
                $('.sub_category_dropdown').click(function () { // sub category filter dropdown
                    $(this).next('.category_sub_outer').toggleClass('sub_category_dropdown_active');
                })
                $('.custom_date_search_form_label').click(function () { // custom date filter form
                    $('.custom_date_search_form').toggle();
                })

                $('.mobile_filter_btn').click(function () {
                    $('.listing_page_sidebar').addClass('listing_page_sidebar_active');
                    $('body').addClass('body_overflow');
                    $('.moblie_filter_overlay').show();

                })
                $('.moblie_filter_overlay').click(function () {
                    $('.listing_page_sidebar').removeClass('listing_page_sidebar_active');
                    $('body').removeClass('body_overflow');
                    $('.moblie_filter_overlay').hide();

                })
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