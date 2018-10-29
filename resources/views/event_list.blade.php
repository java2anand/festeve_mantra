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
                <h1 class="col-xs-12 text-center home_section_heading"><span>{{$category->category_title}}</span></h1>
                <!--<div class="col-xs-12 text-center">
                    <form name="listing_search_form" id="listing_search_form">
                        <input type="text" class="listing_search_input" placeholder="Discover over 18,000 fests and get your favorites coming up!">
                    </form>
                </div>-->
                @if(!empty($arr_top_ad))
                @if(isset($arr_top_ad->ad_image) && !empty($arr_top_ad->ad_image) && file_exists(public_path() . '/images/advertisement/' . $arr_top_ad->ad_image))
                @php $adimage = asset( 'images/advertisement/'.$arr_top_ad->ad_image); @endphp

                <div class="col-xs-12 listing_top_banner">
                    <a href="{{ $arr_top_ad->ad_url }}"><img src="{{ $adimage }}"" alt="banner"></a>
                </div>
                @endif
                @elseif(isset($category->top_banner) && !empty($category->top_banner) && file_exists(public_path() . '/images/category/top_banner/' . $category->top_banner))
                <div class="col-xs-12 listing_top_banner">
                    <a href="javascript:void(0);"><img src="{{ asset( 'images/category/top_banner/'.$category->top_banner )}}" alt="banner"></a>
                </div>
                @endif
            </div>


            <!--<div class="row mobile_filter_btn_outer">
                <div class="col-xs-12 text-right"><button class="mobile_filter_btn"><img src="{{asset('ws/images/filter.svg')}}"> Filter</button></div>
            </div>-->
            <div class="row mobile_filter_btn_outer">
                <div class="col-xs-6 text-left">
                    <select name="order_by" class="btn mobile_new_sort">
                        <option value="">Sort by</option>
                        <option value="heigh_price">Date: Oldest to Newest</option>
                        <option value="low_price">Date: Newest to Oldest</option>
                    </select>
                </div>
                <div class="col-xs-6 text-right"><button class="mobile_filter_btn"><img src="{{ asset('ws/images/filter.svg')}}"> Filter</button></div>
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
                                        <input type="checkbox" id="filter_{{$k}}" <?= $maincat->slug == Request::segment(2) ? 'checked' : ''; ?> onclick='window.location.href = "{{ url('event-category/'.$maincat->slug)}}"'>
                                        <label for="filter_{{$k}}" class="sub_category_dropdown">{{ $maincat->category_name }} <span><!--<img src="{{ asset('ws/images/down_arrow.jpg')}}">--></span></label>
                                        <!-- sub categories  -->
                                        <!--<ul class="category_sub_outer">
                                            @foreach($maincat->children as $key=>$childcat)
                                            <li>
                                                <input type="checkbox" id="filters_{{$k.$key}}">
                                                <label for="filters_{{$k.$key}}">{{ $childcat->category_name }}</label>
                                            </li>
                                            @endforeach
                                        </ul>-->
                                        <!-- sub categories ends -->
                                    </li>
                                    @endforeach

                                </ul>
                            </div>
                            <!-- category filter ends -->

                            <!-- Date filter -->
                            <div class="listing_left_sidebar_inner list_filter_spacing">
                                <h4>DATE</h4>
                                <?php
                                $event_date = app('request')->input('event_date');
                                ?>

                                <ul>
                                    <li>
                                        <input type="checkbox" id="filter_61" <?= empty($event_date) || $event_date == 'all' ? 'checked' : ''; ?> onclick='window.location.href = "{{ url()->current().'?event_date=all' }}"'>
                                        <label for="filter_61">All</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_71" <?= isset($event_date) && $event_date == 'today' ? 'checked' : ''; ?> onclick='window.location.href = "{{ url()->current().'?event_date=today' }}"'>
                                        <label for="filter_71">Today</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_81" <?= isset($event_date) && $event_date == 'this-week' ? 'checked' : ''; ?> onclick='window.location.href = "{{ url()->current().'?event_date=this-week' }}"'>
                                        <label for="filter_81">This Week</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_101" <?= isset($event_date) && $event_date == 'next-week' ? 'checked' : ''; ?> onclick='window.location.href = "{{ url()->current().'?event_date=next-week' }}"'>
                                        <label for="filter_101">Next Week</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_111" <?= isset($event_date) && $event_date == 'next-month' ? 'checked' : ''; ?> onclick='window.location.href = "{{ url()->current().'?event_date=next-month' }}"'>
                                        <label for="filter_111">Next Month</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="filter_121">
                                        <label for="filter_121" class="custom_date_search_form_label">Custom Date</label>
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
                                <?php
                                if (isset($event->event_image) && !empty($event->event_image) && file_exists(public_path() . '/images/event/' . $event->event_image)) {
                                    $image = asset('images/event/' . $event->event_image);
                                } else {
                                    $image = asset('ws/images/no-image.jpg');
                                }
                                ?>
                                <div class="listing_page_mid_section_outer">
                                    <div class="listing_page_mid_section_left">
                                        <a href="{{ url('event-detail/'.$event->slug )}}"><img src="{{ asset($image )}}"></a>
                                    </div>
                                    <div class="listing_page_mid_section_right {{ ($event->premium == 1) ? 'f_premium' : (($event->premium == 2) ? 'f_favourite' : '')  }}">
                                        <p class="listing_mid_category_date">
                                            <a href=""><span class="listing_mid_category_span1" style="background-image: url('{{asset( 'images/category/mini_icon/'.$event->category->mini_icon)}}')">  {{ $event->category->category_name }}</span></a>
                                            <span class="text-right">{{  ($event->start_date != $event->end_date ) ?  date('d M', strtotime($event->start_date)).' - '. date('d M', strtotime($event->end_date)).date(', Y')  : date('d M Y', strtotime($event->start_date))}}</span>
                                        </p>
                                        <h3><a href="{{ url('event-detail/'.$event->slug )}}">{{ $event->title }}</a></h3>
                                        <p class="listing_mid_category_info">
                                            {!! substr($event->short_description,0,180).'..' !!}
                                        </p>
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
                        <li class="listing_page_right_sidebar">
                            @if(count($arr_right_ad)>0)
                            @foreach($arr_right_ad as $ad)
                            @if(isset($ad->ad_image) && !empty($ad->ad_image) && file_exists(public_path() . '/images/advertisement/' . $ad->ad_image))
                            @php $adimage = asset( 'images/advertisement/'.$ad->ad_image); @endphp
                            <a href="{{ $ad->ad_url }}"><img src="{{ $adimage }}" alt="ads banner"></a><br />
                            @endif
                            @endforeach
                            @endif
                        </li>
                        <!-- right sidebar ends -->
                    </ul>
                </div>
            </div>
        </div>
        <!-- footer -->

        @include('footer')

        <!-- Initialize Swiper -->
        <script>
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
            });
            });
        </script>
    </body>
</html>