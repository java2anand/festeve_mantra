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
        </div>	<!-- content section ends -->

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
                        <form name="newsletter_form" id="newsletter_form" novalidate="novalidate">
                            <div class="input-group">
                                <input type="email" placeholder="Enter your email address" class="form-control" name="newsletter_email" id="newsletter_email">
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
        <!--<div class="container-fluid about_form_outer">
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
        </div>-->

        <!-- footer -->
        @include('footer')
        <!-- footer ends -->
    </body>
</html>