<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <!-- top banner section -->
        <div class="container-fluid about_us_banner">
            <div class="banner_overlay"></div>
            <div class="row">
                <h1 class="text-center about_us_pageheading">{{ $page_data->title}}</h1>
            </div>
        </div>
        <!-- top banner ends -->
        <div class="container about_content_section"><!-- content section -->

            <div class="row about_page_sections"><!-- section 1 -->
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">ABOUT <span>OUR TEAM</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    {!! $page_data->content !!}
                </div>
            </div> <!-- section 1 ends -->
        </div>	<!-- content section ends -->


        <!-- footer -->
        @include('footer')

        <!-- footer ends -->

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