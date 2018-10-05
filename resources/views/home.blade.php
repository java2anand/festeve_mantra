<!DOCTYPE html>
<html lang="en">
    <!-- Head Section -->
    @include('head')

    <link rel="stylesheet" href="{{asset('ws/plugins/datepicker/bootstrap-datepicker.min.css') }}">
    <!-- //Head Section -->
    <body>
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <!-- top banner section -->
        <div class="container-fluid top_banner_section">
            <div class="row">
                <img src="{{asset('ws/images/top_banner.jpg')}}" alt="banner">
            </div>
        </div>
        <!-- top banner ends -->

        <!-- search sectrion -->
        <div class="container home_search_outer">
            <div class="row search_first_section">
                <div class="col-xs-12 text-center">
                    <form class="form-inline" action="{{ url('search/')}}">
                        <div class="form-group frm_event_name">
                            <input type="text" class="form-control" name="event_name" id="event_name" placeholder="Event...">
                        </div>
                        <div class="form-group frm_date">
                            <input type="text" class="form-control" name="event_date" id="event_date" placeholder="Date">
                        </div>
                        <div class="form-group frm_location">
                            <input type="text" class="form-control" name="event_location" id="event_location" placeholder="Location">
                        </div>
                        <button type="submit" class="btn btn-default frm_button">Search</button>
                    </form>

                </div>
            </div>
            <div class="row search_bottom_section"><!-- search bottom links -->
                <div class="col-xs-12 text-center">
                    <ul>
                        @foreach($arr_category as $cat)
                            <li><a style='background-image:url("{{ asset( 'images/category/mini_icon/'.$cat->mini_icon) }}")' href="{{url('event-category/'.$cat->slug)}}">{{$cat->category_name}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div><!-- search bottom links ends -->


        </div>
        <!-- search section ends -->
        @if(count($arr_event)>0)
            <div class="container home_section upcoming_events">
                <div class="row">
                    <h3 class="home_section_heading text-center">UPCOMING <span>EVENTS</span></h3>
                    <p class="text-center heading_seprator">
                        <span></span>
                    </p>

                    @foreach($arr_event as $event)
                        <div class="col-sm-4 col-xs-12 upcoming_events_items"><!-- upcoming event -->
                            <div class="upcoming_item_container">
                                <div class="upcoming_item_image">
                                    <a href="{{ url('event-detail/'.$event->slug)}}">
                                        @if(isset($event->event_image) && !empty($event->event_image) && file_exists(public_path() . '/images/event/' . $event->event_image))
                                        <img src="{{ asset( 'images/event/'.$event->event_image)}}" alt="event banner">
                                        @else
                                        <img src="{{ asset( 'ws/images/no-image.jpg')}}" alt="event banner">
                                        @endif
                                    </a>
                                </div>
                                <div class="upcoming_item_info">
                                    <span class="event_type_icon"><img src="{{asset('images/category/event_image/'.$event->category->event_image)}}"></span>
                                    <p class="uc_event_name"><a href="{{ url('event-detail/'.$event->slug)}}">{{$event->title}}</a></p>
                                    <p class="uc_event_date">{{date('F d, Y', strtotime($event->start_date))}}</p>

                                </div>
                            </div>
                        </div><!-- upcoming event ends -->
                    @endforeach
                </div>
            </div>
        @endif

        @if(count($arr_story)>0)
            <div class="home_storeis_outer"><!-- stories outer -->
                <div class="container">
                    <div class="row">
                        <h3 class="home_section_heading text-center">EVENT <span>STORIES</span></h3>
                        <p class="text-center heading_seprator"><span></span></p>
                        <!-- Swiper -->
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                            @foreach($arr_story as $story)
                                <div class="swiper-slide">
                                    <div class="col-xs-12 upcoming_events_items"><!-- upcoming event -->
                                        <div class="upcoming_item_container">
                                            <div class="upcoming_item_image">
                                                <a href="{{ url('story-detail/'.$story->slug)}}"><img src="{{ asset( 'images/story/'.$story->image)}}" alt="Story banner"></a>
                                            </div>
                                            <div class="upcoming_item_info">
                                                <p class="uc_event_name"><a href="{{ url('story-detail/'.$story->slug)}}">{{$story->story_name}}</a></p>
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="{{ asset( 'images/author/'.$story->author->image)}}" class="media-object" width="50px" height="50px">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading"><span>by</span> {{$story->author->name}}</h4>
                                                        <p>{!! substr($story->description,0,50).'...' !!}</p>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                            </div>
                            <!-- Add Pagination -->
                            <!--<div class="swiper-pagination" style="position:relative"></div>-->
                            <p class="col-xs-12 text-center"><a href="{{ url('/stories')}}" class="home_seeall_cat_link">SEE ALL STORIES</a></p>
                        </div>
                    </div>
                </div>
            </div><!-- stories outer -->
        @endif

        <!-- categories section -->
        <div class="container home_categories_secton">
            <div class="row">
                <h3 class="home_section_heading text-center">Browse <span>CATEGORIES</span></h3>
                <p class="text-center heading_seprator"><span></span></p>

                <div class="col-md-9 col-sm-8 col-xs-12 f_padding_right">
                    <div class="row text-center"><!-- left top categories -->
                        <div class="col-sm-7 col-xs-12 f_padding_right">
                            <a href="{{url('event-category/'.$arr_top_cat[0]->slug)}}">
                                <div class="cat_left_item left_cat1" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[0]->image)}}');">
                                    <p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[0]->mini_icon)}}"></span>Music</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-5 col-xs-12">
                            <a href="{{url('event-category/'.$arr_top_cat[1]->slug)}}"><div class="cat_left_item left_cat2" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[1]->image)}}');"><p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[1]->mini_icon)}}"></span>sports</p></div></a>
                        </div>
                    </div><!-- left top categories -->
                    <div class="row text-center"><!-- left middle categories -->
                        <div class="col-sm-5 col-xs-12 f_padding_right">
                            <a href="{{url('event-category/'.$arr_top_cat[2]->slug)}}">
                                <div class="cat_left_item left_cat3" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[2]->image)}}');"><p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[2]->mini_icon)}}"></span>food</p></div></a>
                        </div>
                        <div class="col-sm-7 col-xs-12">
                            <a href="{{url('event-category/'.$arr_top_cat[3]->slug)}}"><div class="cat_left_item left_cat4" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[3]->image)}}');"><p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[3]->mini_icon)}}"></span>travel</p></div></a>
                        </div>
                    </div><!-- left middle categories -->
                    <div class="row text-center"><!-- left bottom categories -->
                        <div class="col-sm-12 col-xs-12 ">
                            <a href="{{url('event-category/'.$arr_top_cat[4]->slug)}}">
                                <div class="cat_left_item left_cat5" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[4]->image)}}');"><p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[4]->mini_icon)}}"></span>DJ Party</p></div></a>
                        </div>
                    </div><!-- left bottom categories -->

                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="row text-center"><!-- right top categories -->
                        <div class="col-sm-12 col-xs-12">
                            <a href="{{url('event-category/'.$arr_top_cat[5]->slug)}}">
                                <div class="cat_right_item1 right_cat1" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[5]->image)}}');"><p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[5]->mini_icon)}}"></span><br>Conference</p></div></a>
                        </div>
                    </div> <!-- ends -->
                    <div class="row text-center"><!-- right bottom categories -->
                        <div class="col-sm-12 col-xs-12">
                            <a href="{{url('event-category/'.$arr_top_cat[6]->slug)}}">
                                <div class="cat_right_item2 right_cat2" style="background-image:url('{{asset('images/category/image/'.$arr_top_cat[6]->image)}}');"><p><span><img src="{{asset('images/category/mini_icon/'.$arr_top_cat[6]->mini_icon)}}"></span><br>Skill Development</p></div></a>
                        </div>
                    </div> <!-- ends -->

                </div>
                <p class="col-xs-12 text-center"><a href="{{ url('/categories')}}" class="home_seeall_cat_link">SEE ALL CATEGORIES</a></p>

            </div>
        </div>

        <!-- categories section ends -->

        <!-- get more buttons -->
        <div class="container-fluid home_more_button">
            <div class="row">
                <h3 class="home_section_heading text-center">INSPIRE THE FESTIVAL COMMUNITY
TO GROW</h3>
                <p class="text-center heading_seprator"><span></span></p>
                <div class="col-xs-12 text-center">
                    <a href="{{ url('/add-event')}}" class="orange_btn">Submit Event</a>
                    <a href="#" class="black_btn">Submit Story</a>
                </div>
            </div>
        </div>
        <!-- get more button ends -->

        <!-- newsletter section -->
        <div class="home_newsletter">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h3>
                            <small>NEVER MISS THE NEXT UPCOMING</small>
                            EVENT AND FESTIVAL
                        </h3>
                    </div>
                    <div class="col-sm-6">
                        <form name="newsletter_form" id="newsletter_form">
                            <div class="input-group">
                                <input type="email" placeholder='Enter your email address' class="form-control" name="newsletter_email" id="newsletter_email">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit" name="newsletter_button" id="newsletter_button">Subscribe</button>
                                </span>
                            </div><!-- /input-group -->
                        </form>
                    </div>
                    <div id="msg" class="col-md-6"></div>
                </div>
            </div>
        </div>
        <!-- newsletter section -->
        <!-- footer -->
        @include('footer')
        <!-- footer ends -->

        <script src="{{asset('ws/plugins/datepicker/bootstrap-datepicker.min.js') }}"></script>
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

                });

                $("#newsletter_form").validate({
                    errorElement: 'span',
                    errorPlacement: function (error, element) {
                        error.insertAfter($("#newsletter_form .input-group"));
                    },
                    rules: {
                        newsletter_email: "required"
                    },
                    messages: {
                        newsletter_email: "enter email!"
                    },
                    submitHandler: function (form) {
                        $.ajax({
                            url: "{{ URL::route('save_newsleter') }}",
                            crossDomain: true,
                            type: "POST",
                            data: {'email': $("#newsletter_email").val()},
                            dataType: 'json',
                            success: function (response) {
                                $("#msg").html(response.msg);
                            }
                        });
                    }
                });

                var date = new Date();
                var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
                $("#event_date").datepicker({
                    format: "dd-mm-yyyy",
                    todayHighlight: true,
                    startDate: today,
                    //endDate: end,
                    autoclose: true
                });

            });
        </script>
    </body>
</html>