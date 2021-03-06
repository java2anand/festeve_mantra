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
                    <p class="team_subheading">We are eager to know what's in your festive mind.Drop us your message!</p>
                </div>
            </div>
        </div>

        <div class="container contact_us_content">
            <div class="row">
                <div class="col-md-8 col-sm-8 col-xs-12" >
                    <div class="contact_form_section">
                        <p class="form-heading">The form below is your gateway to Festeve World! Fill in:</p>
                        <!-- form -->
                        <div class="row">
                            <form name="contact_form" id="contact_form">
                                @php $option_arr = config('constant.contact_us_option'); @endphp

                                <div class="form-group col-xs-12">
                                    <select class="form-control" id="contact_title" name="contact_title">
                                        @foreach($option_arr as $k=>$arr)
                                            <option value='{{$k}}'>{{ $arr }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group col-sm-6 col-xs-12">
                                    <input type="text" id='contact_name' name='contact_name' class="form-control" placeholder="Name" autocomplete="off">
                                </div>

                                <div class="form-group col-sm-6 col-xs-12">
                                    <input type="text" id='contact_company' id='contact_company' class="form-control" placeholder="Company Name" autocomplete="off">
                                </div>
                                <div style="clear:both"></div>
                                <div class="form-group col-sm-6 col-xs-12">
                                    <input type="text" id="contact_city" name="contact_city" class="form-control" placeholder="City" autocomplete="off">
                                </div>
                                <div class="form-group col-sm-6 col-xs-12">
                                    <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email Id" autocomplete="off">
                                </div>
                                <div style="clear:both"></div>
                                <div class="form-group col-xs-12">
                                    <input type="text" id="contact_phone" name="contact_phone" class="form-control" placeholder="Mobile No." autocomplete="off">
                                </div>
                                <div class="form-group col-xs-12">
                                    <textarea name="contact_message" name="contact_message" class="form-control" rows="3" placeholder="Message"></textarea>
                                </div>
                                <div style="clear:both"></div>
                                <div class="form-group col-xs-12">
                                    <button type="submit" id="contact_button" class="btn btn-default">Submit</button>
                                    <div id="contact_return_msg"></div>
                                </div>
                            </form>
                        </div>
                        <!-- form ends -->
                    </div>

                    <div class="contact_form_section">
                        <!-- news letter section -->
                        <h3 class="text-center cont_newsletter_heading">NEVER MISS THE NEXT UPCOMING</h3>
                        <p class="cont_newsletter_subheading">EVENT AND FESTIVAL</p>
                        <form name="newsletter_form" id="newsletter_form" novalidate="novalidate">
                            <div class="input-group">
                                <input type="email" class="form-control" name="newsletter_email" id="newsletter_email" placeholder="Enter you email">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit" name="newsletter_button" id="newsletter_button">Subscribe</button>
                                </span>

                            </div><!-- /input-group -->

                        </form>
                        <div id="newsletter_return_msg" class="col-md-6 col-md-offset-2"></div>
                        <!-- ends -->
                    </div>
                </div><!-- left section ends -->



                <div class="col-md-4 col-sm-4 col-xs-12"><!-- right section -->
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
                                <p class="text-center contact_info_links"><a href="{{url('add-advertise')}}">Start Promoting</a></p>
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
                                <p class="text-center contact_info_links"><a href="{{url('add-event')}}">Get Started</a></p>
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
                                <p class="contact_info_text"><img src="{{ asset('ws/images/call.png')}}"> <a href="tel:{{$sitedata['mobile_number']}}">{{ '+91-'.$sitedata['phone_number'].', +91-'.$sitedata['mobile_number']}}</a></p>
                                <p class="contact_info_text"><img src="{{ asset('ws/images/mail.png')}}"> <a href="mailto:{{$sitedata['contact_email']}}">{{$sitedata['contact_email']}}</a></p>
                            </div>
                        </div>
                    </div>
                </div> <!-- right section ends -->
            </div>
        </div>


        <!-- footer -->
        @include('footer')
        <script>
            $(document).ready(function(){
                /******* Contact us start **********/
                $("#contact_form").validate({
                    errorElement: 'label',
                    rules: {
                        contact_name: {
                            required:true,
                        },
                        contact_city: {
                            required:true,
                        },
                        contact_email: {
                            required:true,
                            email:true
                        },
                        contact_phone: {
                            required:true,
                            number:true,
                            maxlength:10,
                            minlength:10
                        },
                        contact_message: {
                            required:true
                        }
                    },
                    messages: {
                        contact_name: {
                            required:'Enter your name!',
                        },
                        contact_city: {
                            required:'Enter your current city!',
                        },
                        contact_email: {
                            required:"Enter your email id!",
                            email:"Enter valid email id!"
                        },
                        contact_phone: {
                            required:'Enter your mobile number!',
                            number:'Enter only number!'
                        },
                        contact_message: {
                            required:'Enetr your requirement message!'
                        }
                    },
                    submitHandler: function (form) {
                        $("#contact_form #contact_button").html('please wait..').attr('disabled',true);
                        $.ajax({
                            url: "{{ URL::route('save_enquiry') }}",
                            crossDomain: true,
                            type: "POST",
                            data: $('#contact_form').serialize(),
                            dataType: 'json',
                            success: function (response) {
                                $("#contact_form #contact_return_msg").html(response.msg);
                                setTimeout(function (){
                                    location.reload();
                                },2000);
                            }
                        });
                    }
                });
                /******* Contact us end **********/
            });
        </script>
        <!-- footer ends -->
    </body>
</html>