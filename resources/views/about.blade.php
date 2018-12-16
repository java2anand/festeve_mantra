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
                    <h3 class="home_section_heading text-center">Our <span>Story</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">This all started with our not-so-good experiences with few events. Even after gathering so called &ldquo;all inclusive&rdquo; information from various websites, we landed into situations where either the event info was misleading or inappropriate or not at all available despite tickets registration/ passes for entry.</span></span></p>

                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">We observed that countless number of event promotion websites provide online information regarding registration and tickets for the events but don&rsquo;t talk of what the event is all about, how to reach there, what would be the other essentials to be known by attendees etc. Even if a few websites offer some information, they target to talk loud of the grand events only. But a purely &ldquo;informatory&rdquo; platform that could connect the audience to the events regardless of their scale despite ticket availability info was entirely missing. </span></span></p>

                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">So, we thought of launching an event informatory platform that could bring the event-attendees find the best match as per their interests. To make Festeve Mantra one of the most embraced event information dispensing platform, we also facilitate event organizers and ticket sellers also to connect with the attendees on a common platform. </span></span></p>

                </div>
            </div> <!-- section 1 ends -->

            <div class="row about_our_mission about_page_sections"><!-- section 2 -->
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">Who <span>We Are</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">We are fun-lovers hooked to enjoy diverse events and activities and happened to be just information collectors. But after few bitter experiences of the events we attended, we founded Festeve Mantra- a unique platform that helps you find events of your interests in your vicinity with all vital information delivered on your fingertips. </span></span></p>
                </div>
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">The Way <span>We Work</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">We are enthusiastic event lovers always on our toes to find events in all eras of society and for all ages across nation. Our passionate team gathers even the minutest information about the event and serves the most transparent way. Scratch from the basic info about the event, the venue location, event schedule, whom should attend it, and how to get tickets and register, we fetch you the tiniest details on your fingertips.</span></span></p>

                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">You are directed to the Official Ticket website when you click the given button on every event page. </span></span></p>

                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">We connect with event organizers and ticket sellers to help them find their authentic leads and promote their businesses the cost-effective way.</span></span></p>
                </div>
            </div> <!-- section 2 ends -->

            <div class="row about_page_sections"><!-- section 1 -->
                <div class="col-xs-12">
                    <h3 class="home_section_heading text-center">Our <span>Mission</span></h3>
                    <p class="text-center heading_seprator"><span></span></p>
                </div>
                <div class="col-xs-12 about_page_text">
                    <p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:13pt"><span style="font-family:Calibri,sans-serif">Festeve Mantra is missioned to become the first choice for event attendees, organizers and ticket sellers and contribute to make the event information finding a delightful experience. We endeavor to set a one-of-its-kind platform that connects online audience with event organizers and ticket vendors by capturing and then rendering the most appropriate and crisp information with the blink of an eye.&nbsp;</span></span></p>
                </div>
            </div>

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