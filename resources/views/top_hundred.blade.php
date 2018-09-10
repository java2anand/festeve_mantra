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
        <div class="container listing_page_width listing_page_top_section">
            <div class="row">
                <h1 class="col-xs-12 text-center home_section_heading"><span>TOP HUNDRED EVENTS</span></h1>
            </div>
            <div class="row mobile_filter_btn_outer">
                <div class="col-xs-12 text-right"><button class="mobile_filter_btn"><img src="{{asset('ws/images/filter.svg')}}"> Filter</button></div>
            </div>
        </div>

        <div class="container listing_page_width listing_page_list_outer">
            <div class="row">
                <div class="col-xs-12">
                    <ul>

                        <!-- listing -->
                        <li class="" id="post-data">
                            @include('top_hundred_ajax')
                        </li>
                        <!-- list ends -->
                        <div class="listing_page_mid_section_outer ajax-load text-center" style="display:none">
                            <p><img src="{{asset('ws/images/loader.gif')}}">Loading More Events</p>
                        </div>

                    </ul>
                </div>
            </div>
        </div>
        <!-- footer -->

        @include('footer')

        <!-- Initialize Swiper -->
        <script type="text/javascript">
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
        </script>
    </body>
</html>