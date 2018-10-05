<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <div class="container-fluid static_top_banner team_top_banner">
            <div class="row">
                <div  class="col-xs-12 text-center">
                    <h1>Contact Us</h1>
                    <p class="team_subheading">Drop us a line, Get in Touch</p>
                </div>
            </div>
        </div>

        <div class="container contact_us_content">
            <div class="row">
                <div class="col-md-8 col-sm-8 col-xs-12 contact_form_section">
                    <p class="form-heading">Write to us by filling the form below :</p>

                    <!-- form -->
                    <div class="row">
                        <form>
                            <div class="form-group col-xs-12">
                                <input type="text" class="form-control" placeholder="I want to list my event on festeve mantra">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <input type="text" class="form-control" placeholder="Name">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <input type="text" class="form-control" placeholder="Company Name">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <input type="text" class="form-control" placeholder="City">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <input type="email" class="form-control" placeholder="Email Id">
                            </div>
                            <div class="form-group col-xs-12">
                                <input type="text" class="form-control" placeholder="Mobile No.">
                            </div>
                            <div class="form-group col-xs-12">
                                <textarea class="form-control" rows="3" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </div>
                        </form>
                    </div>
                    <!-- form ends -->

                    <!-- news letter section -->
                    <h3 class="text-center cont_newsletter_heading">Subscribe to Our Newsletter</h3>
                    <p class="cont_newsletter_subheading">Never miss a great event & festivals<br> Get a weekly updates</p>
                    <form name="newsletter_from" id="newsletter_form">
                        <div class="input-group">
                            <input type="email" class="form-control" name="newsletter_email" id="newsletter_email" placeholder="Enter you email">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button" name="newsletter_button" id="newsletter_button">Subscribe</button>
                            </span>
                        </div><!-- /input-group -->
                    </form>

                    <!-- ends -->



                </div><!-- left section ends -->

                <div class="col-md-4 col-sm-4 col-xs-12 cont_right_section"><!-- right section -->
                    <div class="contact_info_sections">
                        <div class="row">
                            <div class="col-xs-3 contact_icons">
                                <img src="{{ asset('ws/images/contact_img1.jpg')}}" class="img-responsive">
                            </div>
                            <div class="col-xs-9">
                                <h3>Advertise on</h3>
                                <img src="{{ asset('ws/images/logo_sm.jpg')}}">
                            </div>

                            <div class="col-xs-12">
                                <p class="text-center contact_info_text">Market to million looking for
                                    memorable experience</p>
                                <p class="text-center contact_info_links"><a href="#">Start Promoting</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="contact_info_sections">
                        <div class="row">
                            <div class="col-xs-3 contact_icons">
                                <img src="{{ asset('ws/images/contact_img2.jpg')}}" class="img-responsive">
                            </div>
                            <div class="col-xs-9">
                                <h3>Want to Drive</h3>
                                <p class="ct_new_text">More Attendees with</p>
                                <p><img src="{{ asset('ws/images/logo_sm.jpg')}}"></p>
                            </div>

                            <div class="col-xs-12">
                                <p class="text-center contact_info_links"><a href="#">Get Started</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="contact_info_sections">
                        <div class="row">
                            <div class="col-xs-3 contact_icons">
                                <img src="{{ asset('ws/images/contact_img3.jpg')}}" class="img-responsive">
                            </div>
                            <div class="col-xs-9">
                                <h3>Support</h3>
                            </div>

                            <div class="col-xs-12 contact_mail_phone">
                                <p class="contact_info_text"><img src="{{ asset('ws/images/call.png')}}"> <a href="#">0124-22012015, +91-9876543210</a></p>
                                <p class="contact_info_text"><img src="{{ asset('ws/images/mail.png')}}"> <a href="#">mail@event.com</a></p>
                            </div>
                        </div>
                    </div>
                </div> <!-- right section ends -->
            </div>
        </div>


        <!-- footer -->
        @include('footer')

        <!-- footer ends -->
    </body>
</html>