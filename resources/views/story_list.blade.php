<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->

        <!-- top banner section -->
        <div class="container-fluid story_list_banner">
            <div class="banner_overlay"></div>
            <div class="row">
                <h1 class="text-center stories_page_heading">Stories
                    <small>Music, Conference, Parties ans All</small>
                </h1>
            </div>
        </div>
        <!-- top banner ends -->

        <!-- content section -->
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <ul class="story_list_outer_ul">
                        <li class="story_list_outer_ul_left">
                            <div class="row">
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="#"><img src="{{ asset('ws/images/img_story.jpg')}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="#">Music</a></p>
                                        <p class="list_cat_title"><a href="#">What is Lorem Ipsum?</a></p>
                                        <p class="list_cat_by">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                        <p class="list_cat_desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        <p class="list_cat_readmore"><a href="#">Read More</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="#"><img src="{{ asset('ws/images/img_story.jpg')}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="#">Music</a></p>
                                        <p class="list_cat_title"><a href="#">What is Lorem Ipsum?</a></p>
                                        <p class="list_cat_by">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                        <p class="list_cat_desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        <p class="list_cat_readmore"><a href="#">Read More</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="#"><img src="{{ asset('ws/images/img_story.jpg')}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="#">Music</a></p>
                                        <p class="list_cat_title"><a href="#">What is Lorem Ipsum?</a></p>
                                        <p class="list_cat_by">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                        <p class="list_cat_desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        <p class="list_cat_readmore"><a href="#">Read More</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="#"><img src="{{ asset('ws/images/img_story.jpg')}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="#">Music</a></p>
                                        <p class="list_cat_title"><a href="#">What is Lorem Ipsum?</a></p>
                                        <p class="list_cat_by">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                        <p class="list_cat_desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        <p class="list_cat_readmore"><a href="#">Read More</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="#"><img src="{{ asset('ws/images/img_story.jpg')}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="#">Music</a></p>
                                        <p class="list_cat_title"><a href="#">What is Lorem Ipsum?</a></p>
                                        <p class="list_cat_by">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                        <p class="list_cat_desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        <p class="list_cat_readmore"><a href="#">Read More</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="#"><img src="{{ asset('ws/images/img_story.jpg')}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="#">Music</a></p>
                                        <p class="list_cat_title"><a href="#">What is Lorem Ipsum?</a></p>
                                        <p class="list_cat_by">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                        <p class="list_cat_desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        <p class="list_cat_readmore"><a href="#">Read More</a></p>
                                    </div>
                                </div>
                                <div class="col-xs-12 text-center list_pager_outer"><!-- pager section -->
                                    <nav> <ul class="pagination"> <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li> <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li> <li><a href="#">2</a></li> <li><a href="#">3</a></li> <li><a href="#">4</a></li> <li><a href="#">5</a></li> <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li> </ul> </nav>
                                </div><!-- pager section ends -->
                            </div>
                        </li>
                        <li class="story_list_outer_ul_right">
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
                                        <label for="filter_2" class="sub_category_dropdown">Music <span><img src="{{ asset('ws/images/down_arrow.jpg')}}"></span></label>
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
                                        <label for="filter_4" class="sub_category_dropdown">All Event Types <span><img src="{{ asset('ws/images/down_arrow.jpg')}}"></span></label>
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

                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- content section ends -->

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