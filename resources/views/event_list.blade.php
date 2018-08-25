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
                <h1 class="col-xs-12 text-center home_section_heading">Search for <span>event</span></h1>
                <div class="col-xs-12 text-center">
                    <form name="listing_search_form" id="listing_search_form">
                        <input type="text" class="listing_search_input" placeholder="Discover over 18,000 fests and get your favorites coming up!">
                    </form>
                </div>
                <div class="col-xs-12 listing_top_banner">
                    <a href="#"><img src="{{asset('ws/images/listing_banner.jpg')}}" alt="banner"></a>
                </div>
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
                                    <li>
                                        <input type="checkbox" id="filter_1">
                                        <label for="filter_1">All Event Types</label>
                                        <!-- sub categories  -->
                                        <ul class="category_sub_outer">
                                            <li>
                                                <input type="checkbox" id="filter_21">
                                                <label for="filter_21">Sub category1</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="filter_31">
                                                <label for="filter_31">Sub category2</label>
                                            </li>

                                        </ul>
                                        <!-- sub categories ends -->
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_2">
                                        <label for="filter_2" class="sub_category_dropdown">Music <span><img src="{{asset('ws/images/down_arrow.jpg')}}"></span></label>
                                        <!-- sub categories  -->
                                        <ul class="category_sub_outer">
                                            <li>
                                                <input type="checkbox" id="filter_211">
                                                <label for="filter_211">Sub category1</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="filter_311">
                                                <label for="filter_311">Sub category2</label>
                                            </li>

                                        </ul>
                                        <!-- sub categories ends -->
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_3">
                                        <label for="filter_3">Exhibition & Trade Fair</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_4">
                                        <label for="filter_4" class="sub_category_dropdown">All Event Types <span><img src="{{asset('ws/images/down_arrow.jpg')}}"></span></label>
                                        <!-- sub categories  -->
                                        <ul class="category_sub_outer">
                                            <li>
                                                <input type="checkbox" id="filter_212">
                                                <label for="filter_212">Sub category1</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="filter_312">
                                                <label for="filter_312">Sub category2</label>
                                            </li>

                                        </ul>
                                        <!-- sub categories ends -->
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_5">
                                        <label for="filter_5">Music & DJ Parties</label>
                                    </li>

                                </ul>
                            </div>
                            <!-- category filter ends -->

                            <!-- EVENT TYPE filter -->
                            <div class="listing_left_sidebar_inner list_filter_spacing">
                                <h4>EVENT TYPE</h4>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="filter_1">
                                        <label for="filter_1">All Event Types</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_2">
                                        <label for="filter_2">Conference & Seminar</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_3">
                                        <label for="filter_3">Exhibition & Trade Fair</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_4">
                                        <label for="filter_4">All Event Types</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_5">
                                        <label for="filter_5">Music & DJ Parties</label>
                                    </li>

                                </ul>
                            </div>
                            <!-- EVENT TYPE ends -->

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

                            <?php if(count($arrevent)>0){
                                foreach($arrevent as $event){?>
                                <div class="listing_page_mid_section_outer">
                                    <div class="listing_page_mid_section_left" style="background-image:url('{{ asset( 'images/event/'.$event->event_image )}}')">
                                        <a href="#"></a>
                                    </div>
                                    <div class="listing_page_mid_section_right">
                                        <p class="listing_mid_category_date">
                                            <a href="#"><span class="listing_mid_category_span1">Conference</span></a>
                                            <span class="text-right">{{ date('F d, Y',strtotime($event->start_date)) }} | Delhi</span>
                                        </p>
                                        <h3><a href="#">{{ $event->title }}</a></h3>
                                        {!! $event->short_description !!}
                                        <p class="listing_mid_category_link"><a href="{{ url('event-detail/'.$event->slug )}}">View</a></p>
                                    </div>
                                </div>
                            <?php } }?>





                            <!-- pagignation -->
                            <div class="text-center list_pager_outer">
                                <nav> <ul class="pagination"> <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li> <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li> <li><a href="#">2</a></li> <li><a href="#">3</a></li> <li><a href="#">4</a></li> <li><a href="#">5</a></li> <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li> </ul> </nav>
                            </div>
                            <!-- ends -->




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