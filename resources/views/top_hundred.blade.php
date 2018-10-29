<!DOCTYPE html>
<html lang="en">
    @include('head')
    <style type="text/css">
        .ajax-load{
            background: #e1e1e1;
            padding: 10px 0px;
            width: 100%;
        }
    </style>
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <div class="moblie_filter_overlay"></div>
        <div class="container listing_page_width listing_page_top_section top_hundered_outer">
            <div class="row">
                <!--<h1 class="col-xs-12 text-center home_section_heading"><span>TOP HUNDRED EVENTS</span></h1>-->
                <div class="col-xs-12 listing_top_banner">
                    <a href="javascript:void(0);"><img src="{{asset('ws/images/top_hundred.jpg')}}" alt="banner"></a>
                </div>
            </div>
            <!--<div class="row mobile_filter_btn_outer">
                <div class="col-xs-12 text-right"><button class="mobile_filter_btn"><img src="{{asset('ws/images/filter.svg')}}"> Filter</button></div>
            </div>-->
        </div>

        <div class="container home_section upcoming_events top_hundered_outer_new">
            <div class="row" id="post-data">
                @include('top_hundred_ajax')
            </div>
            <div class="ajax-load text-center col-md-12" style="display:none">
                <p><img src="{{asset('ws/images/loader.gif')}}">Loading More Events</p>
            </div>
        </div>


        <!-- footer -->

        @include('footer')

        <!-- Initialize Swiper -->
        <script type="text/javascript">
            /******* ajax pagination start********/
            var page = 1;
            $(window).scroll(function () {
                if ($(window).scrollTop() + $(window).height() >= $(document).height()) {
                    page++;
                    loadMoreData(page);
                }
            });
            function loadMoreData(page) {
                $.ajax({
                    url: '?page=' + page,
                    type: "get",
                    beforeSend: function ()
                    {
                        $('.ajax-load').show();
                    }
                })
                        .done(function (data) {
                            if (data.html == "") {
                                $('.ajax-load').html("No more events found");
                                return;
                            }
                            $('.ajax-load').hide();
                            $("#post-data").append(data.html);
                        })
                        .fail(function (jqXHR, ajaxOptions, thrownError) {
                            alert('server not responding...');
                        });
            }
            /******* ajax pagination end********/
        </script>
    </body>
</html>