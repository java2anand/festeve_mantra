<!DOCTYPE html>
<html lang="en">
    <!-- Head Section -->
    @include('head')

    <link rel="stylesheet" href="{{asset('ws/plugins/datepicker/bootstrap-datepicker.min.css') }}">
    <!-- //Head Section -->
    <style>
        /* autocomplete css */
        .autocomplete-suggestions{border:1px solid #eee;background:#FFF;cursor:default;overflow:auto}
        .autocomplete-suggestion{padding:2px 5px;white-space:nowrap;overflow:hidden;font-size:14px!important}
        .autocomplete-selected{background:#F0F0F0}
        .autocomplete-suggestions strong{font-weight:400;color:#39F;font-size:14px!important}
        .autocomplete-w1{position:absolute;top:0;left:0;margin:6px 0 0 2px;width:100%;}
        .product_detail_page .autocomplete-w1{
                position: fixed !important;
            top: inherit !important;
            left: inherit !important;
        }
        .autocomplete{ /*border:1px solid #e5e5e5; */background:#FFF;text-align:left;max-height:350px;overflow:auto;margin:-6px 6px 6px -2px;cursor:pointer;}
        .autocomplete .selected{background:#F0F0F0}
        .autocomplete div{border-bottom:1px solid #e5e5e5;white-space:nowrap;overflow:hidden;font-size:14px !important;padding:10px;text-transform:capitalize;font-family:OpenSans_Bold;letter-spacing:.3px;}
        .autocomplete strong{font-weight:400;color:#5f2487}
        .autocomplete div span{ font-size:14px !important;}
        /* autocomplete css ends */
        /*.new-copyright-text{padding-top: 0px !important;text-align: right !important; font-size:14px; text-transform:capitalize; margin: 0px;} */
        .new-footer-copyright-section ul{ margin-bottom:0px;}
        /* autocomplete css ends */
    </style>
    <body>
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <!-- new search section -->
        <div class="new_search_outer">
            <div class="container">
                <div class="row">
                    <h1 class="text-center">Enter<br> the happening world</h1>
                    {!! Form::open([
                    'url' => ['search?'],
                    'method' => 'get'
                    ]) !!}
                    <input type="text" class="form-control" name="keyword" id="keyword_main" placeholder="Search all the upcoming events...">
                    <button type="submit" class="btn btn-default frm_button"><img src="{{ asset( 'ws/images/new_search.png')}}" alt="search icon"></button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
        <div class="new_search_cat search_bottom_section">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <ul>
                            @foreach($arr_category as $cat)
                            <li><a style='background-image:url("{{ asset( 'images/category/mini_icon/'.$cat->mini_icon) }}")' href="{{url('event-category/'.$cat->slug)}}">{{$cat->category_name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- new search ends -->

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
                            <p class="uc_event_date">{{  ($event->start_date != $event->end_date ) ?  date('d M', strtotime($event->start_date)).' - '. date('d M', strtotime($event->end_date)).date(', Y')  : date('d M Y', strtotime($event->start_date))}}</p>

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
                    <div id="newsletter_return_msg" class="col-md-6"></div>
                </div>
            </div>
        </div>
        <!-- newsletter section -->
        <!-- footer -->
        @include('footer')
        <!-- footer ends -->

        <script src="{{asset('ws/plugins/datepicker/bootstrap-datepicker.min.js') }}"></script>
        <script src="{{asset('ws/js/jquery.autocomplete.js') }}"></script>
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

        $(function () {
            $(document).on('keyup', '#keyword_main', function () {
                if ($(this).val().length > 1) {
                    $('#home_search_loader').show();
                } else {
                    $('#home_search_loader').hide();
                }
            });
            $(document).on('blur', '#keyword_main', function () {
                $('#home_search_loader').hide();
            });

            var a = $('#keyword_main').autocomplete({
                serviceUrl: "{{ URL::route('fetch_result') }}",
                minChars: 2,
                delimiter: /(,|;)\s*/,
                maxHeight: 400,
                width: $('#keyword_main').css('width'),
                zIndex: 9999,
                deferRequestBy: 0,
                noCache: false,
                onSelect: function (value, data) {
                    var value = $(value).text();
                    $('#search-type').val(data);
                    if (data != "") {
                        $('#home_search_loader').hide();
                        if (data.indexOf("category-") != -1){
                            var res = data.substr(9, data.length);
                            window.location = '{{ url('event-category') }}'+ '/' + res;
                        }  else {
                            window.location = '{{ url('event-detail') }}'+ '/' + data;
                        }
                    } else {
                        $('.autocomplete').show();
                        window.location = 'javascript:void(0)';
                    }
                }
            });
        });
        </script>
    </body>
</html>