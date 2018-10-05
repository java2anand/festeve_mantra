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
                <h1 class="text-center about_us_pageheading">about us</h1>
            </div>
        </div>
        <!-- top banner ends -->
        <div class="container about_content_section"><!-- content section -->

            <div class="row about_page_sections"><!-- section 1 -->
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">WHO <span>WE ARE</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more
                        obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered
                        the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and
                        Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line
                        of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                    </p>
                    <p>ey College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the
                        cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de
                        Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics,
                        very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                    </p>
                </div>
            </div> <!-- section 1 ends -->

            <div class="row about_our_mission about_page_sections"><!-- section 2 -->
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">OUR MISSION</h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more
                        obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered
                        the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil)
                        by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem
                        Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.2.
                    </p>
                </div>
            </div> <!-- section 2 ends -->
            <div class="row about_page_sections"><!-- section 3 -->
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">Minds behind <span>festeve mantra ?</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">

                    <div class="row">
                        <div class="col-sm-3 col-xs-3">
                            <img src="{{ asset('ws/images/founder.jpg')}}" class="img-responsive">
                        </div>
                        <div class="col-sm-9 col-xs-9">
                            <p class="founder_name">Rahul Kapoor</p>
                            <p class="founder_designation">CEO of Company</p>
                            <p class="seprator_colored_line"><span></span></p>
                            <p class="founder_info">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45
                                BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the
                                more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,
                                discovered.</p>
                        </div>
                    </div>

                    <div class="row founder_last_section">
                        <div class="col-sm-3 col-xs-3 visible-xs">
                            <img src="{{ asset('ws/images/founder.jpg')}}" class="img-responsive">
                        </div>
                        <div class="col-sm-9 col-xs-9 text-right">
                            <p class="founder_name">Rahul Kapoor</p>
                            <p class="founder_designation">CEO of Company</p>
                            <p  class="seprator_colored_line"><span></span></p>
                            <p class="founder_info">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45
                                BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the
                                more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,
                                discovered.</p>
                        </div>
                        <div class="col-sm-3 col-xs-3 hidden-xs">
                            <img src="{{ asset('ws/images/founder.jpg')}}" class="img-responsive">
                        </div>
                    </div>


                </div>
            </div> <!-- section 3 ends -->
        </div>	<!-- content section ends -->

        <div class="container-fluid about_form_outer">
            <div class="row">
                <h3 class="col-xs-12 text-center home_section_heading">JOIN US</h3>
                <div class="col-xs-12 text-center">
                    <form class="form-inline">
                        <div class="form-group">
                            <input type="text" class="form-control" name="about_name" id="about_name" placeholder="Name">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="about_email" name="about_email" placeholder="Email">
                        </div>
                        <button type="submit" class="btn btn-default">SUBMIT</button>
                    </form>

                </div>
            </div>
        </div>

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