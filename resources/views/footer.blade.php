<footer class="footer">
    <div class="container">
        <div class="row">

            <div class="col-sm-3 col-xs-12 footer_items new_footer_alignment">
                <h3 class="footer_headings">Our Story</h3>
                <ul>
                    <li><a href="{{ url('about-us')}}">About us</a></li>
                    <li><a href="{{ url('our-team')}}">Our Team</a></li>
                    <li><a href="{{ url('careers')}}">We are hiring!</a></li>
                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items new_footer_alignment">
                <h3 class="footer_headings">Get Inspired</h3>
                <ul>
                    <li><a href="{{ url('stories')}}">Festeve stories</a></li>
                    <li><a href="{{ url('add-event')}}">Submit your event</a></li>
                    <li><a href="{{ url('add-story')}}">Submit your story</a></li>

                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items new_footer_alignment">
                <h3 class="footer_headings">policies</h3>
                <ul>

                    <li><a href="{{ url('terms-conditions')}}">T&C </a></li>
                    <li><a href="{{ url('privacy-policy')}}">Privacy Policy</a></li>
                    <li><a href="{{ url('contact-us')}}">Contact us</a></li>
                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items new_footer_alignment">
                <h3 class="footer_headings">More</h3>
                <ul>
                    <li><a href="{{ url('add-advertise')}}">Advertise With Us</a></li>
                    <li><a href="{{ url('apply-job')}}">Fest Job Seekers</a></li>
                    <li><a href="{{ url('organizers')}}">Organizers</a></li>
                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items">
                <img src="{{ asset('ws/images/logo-white.png')}}" alt="footer logo" class="footer_logo" alt="logo-white">
                <ul class="footer_address"><li class="add_icon" style="background-image: url({{ asset('ws/images/add_location.png')}});"><a href="#">{{ $sitedata['address'] }}</a></li></ul>
            </div>



        </div>
    </div>
    <div class="footer_new_section">
        <div class="container ">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <span>CONNECT-<span>
                    <a href="{{ $sitedata['facebook_id'] }}" target="_blank"><img src="{{ asset('ws/images/fb.jpg')}}" alt="facebook"></a>
                    <a href="{{ $sitedata['twitter_id'] }}" target="_blank"><img src="{{ asset('ws/images/tw.jpg')}}" alt="twitter"></a>
                    <a href="{{ $sitedata['linked_id'] }}" target="_blank"><img src="{{ asset('ws/images/in.jpg')}}" alt="linkedin"></a>
                    <a href="{{ $sitedata['instagram_id'] }}" target="_blank"><img src="{{ asset('ws/images/insta.jpg')}}" alt="instagram"></a>

                </div>
                <div class="col-sm-4 col-xs-12 text-center">
                    <img src="{{ asset('ws/images/whatsapp.png')}}" alt="add_phone"> <a href="tel:{{$sitedata['mobile_number']}}">{{ '+91-'.$sitedata['phone_number'].', +91-'.$sitedata['mobile_number']}}</a>
                </div>
                <div class="col-sm-4 col-xs-12 text-right">
                    <img src="{{ asset('ws/images/add_email.png')}}" alt="email"> <a href="mailto:{{$sitedata['contact_email']}}">{{$sitedata['contact_email']}}</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-center">
        <p><span>Copyright @2018.</span> {{$sitedata['company_title']}}. All Rights Reserved</p>
    </div>
</footer>

<!---------- login/Register Popup -------------------->
<!-- Modal -->
<div class="modal fade" id="login_register_popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!--<div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div> -->
            <div class="modal-body">
                <!-- login.register content here -->
                <div class="row">
                    <div class="col-sm-6 lr_left_section"></div>
                    <div class="col-sm-6 col-xs-12 lr_right_section">
                        <button type="button" class="close lr_close_btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <div class="lr_register_outer"><!-- register form -->
                            <p class="lr_mail_heading">Sign up <span>Now!</span></p>
                            <div class="lr_social_buttons">
                                <button><img src="{{ asset('ws/images/fb_login.jpg')}}" alt="fb_login"></button>
                                <button><img src="{{ asset('ws/images/g_login.jpg')}}" alt="g_login"></button>
                                <div class="lr_divider"><hr/><span>or</span></div>
                            </div>

                            <div class="lr_custom_forms">
                                <p>Create an account with Email</p>
                                <form id="register-form">
                                    {!! csrf_field() !!}
                                    <div id="register-msg"></div>
                                    <div class="form-group">
                                        <input type="text" name="reg_first_name" id="reg_first_name" class="form-control" placeholder="Enter Your First Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="reg_last_name" id="reg_last_name" class="form-control" placeholder="Enter Your Last Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="reg_email" id="reg_email" class="form-control" placeholder="Enter Your Email">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="reg_phone" id="reg_phone" class="form-control" placeholder="Enter Your Phone Number">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="reg_password" id="reg_password" class="form-control" placeholder="Enter Password">
                                    </div>
                                    
                                    <div class="checkbox">
                                        <label class="lr_tc_label">
                                            <input type="checkbox" name="term_check" id="term_check"> I Agree T&C, Privacy Policy.
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-default lr_primary_btn">Sign up</button>
                                </form>

                                <button class="lr_secondary_btns open_login_form">Already a member? Login Now</button>
                            </div>
                        </div><!-- register form ends -->

                        <div class="lr_login_outer"><!-- Login form -->
                            <p class="lr_mail_heading">Login <span>Now!</span></p>
                            <div class="lr_social_buttons">
                                <button><img src="{{ asset('ws/images/fb_login.jpg')}}" alt="fb_login"></button>
                                <button><img src="{{ asset('ws/images/g_login.jpg')}}" alt="g_login"></button>
                                <div class="lr_divider"><hr/><span>or</span></div>
                            </div>

                            <div class="lr_custom_forms">
                                <p>Login using your email address</p>
                                <form class="login" id="login-form" action="{{ url('/login') }}" method="post" data-type="json">
                                    {!! csrf_field() !!}
                                    <div id="login-msg"></div>
                                    <div class="form-group">
                                        <input type="text" name="login_email" id="login_email" class="form-control"  placeholder="Enter Your Email">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="login_password" id="login_password" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="checkbox">
                                        <label class="lr_tc_label">
                                            <input type="checkbox"> Remember me
                                        </label>
                                        <button type="button" class="lr_tc_label lr_forgot_pass open_forgot_pass_form">Forgot Password?</button>
                                    </div>
                                    <button type="submit" class="btn btn-default lr_primary_btn">Login</button>
                                </form>

                                <button class="lr_secondary_btns open_register_form">Not a member yet? Sign up</button>
                            </div>
                        </div><!-- login form ends -->


                        <div class="lr_forgot_pass_outer"><!-- forgot password form -->
                            <p class="lr_mail_heading">Forgot <span>Password?</span></p>

                            <div class="lr_custom_forms">
                                <p>Reset password now</p>
                                <form>
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter Your Email">
                                    </div>
                                    <button type="button" class="btn btn-default lr_primary_btn">Reset Password</button>
                                </form>

                                <button class="lr_secondary_btns open_login_form">Already a member? Login Now</button>
                            </div>
                        </div><!-- forgot password form ends -->

                    </div>
                </div>

                <!-- content ends -->
            </div>
            <!--<div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>-->
        </div>
    </div>
</div>
<!--------- login/register popup ends ----------------->

<!----------------------------- mobile search form popup ------------------------------------->
<div class="mobile_search_box">
    <button type="button" class="mobile_search_box_close">X</button>
    <p class="mobile_search_box_heading">Enter<br> the happening world</p>
    {!! Form::open([
    'url' => ['search?'],
    'method' => 'get'
    ]) !!}
    <div class="form-group">
        <input type="text" class="form-control" name="keyword" placeholder="Search all the upcoming events...">
    </div>
    <button type="submit" class="btn btn-default mobile_search_box_button">Search</button>
    {!! Form::close() !!}

    <!--<form method="get" action="#">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default mobile_search_box_button">Search</button>
    </form>-->
</div>
<!----------------------------- mobile search form popup ends -------------------------------->

<!---------- fgacebook chat ------------>
<!-- Load Facebook SDK for JavaScript -->
<!--<div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>-->

<!-- Your customer chat code -->
<!--<div class="fb-customerchat"
     attribution=setup_tool
     page_id="1115804248623618"
     theme_color="#fa3c4c">
</div>-->
<!---------- fgacebook chat End ------------>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="{{asset('ws/js/jquery.min.js')}}"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="{{asset('ws/js/bootstrap.min.js')}}"></script>
<script src="{{asset('ws/js/swiper.min.js')}}"></script>
<script src="{{asset('ws/js/jquery.validate.min.js')}}"></script>
<script src="{{asset('ws/js/fontawesome.js')}}"></script>
<script>
    $.ajaxSetup({
        headers: {'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')}
    })
    $(document).ready(function () {
        /******mobile sidebar **********/
        $('.mobile_nav_section button').click(function () {
            $('.nav_desktop').addClass('listing_page_sidebar_active');
            $('body').removeClass('body_overflow');
            $('.moblie_header_overlay').show();

        });
        $('.moblie_header_overlay').click(function () {
            $('.nav_desktop').removeClass('listing_page_sidebar_active');
            $('body').removeClass('body_overflow');
            $('.moblie_header_overlay').hide();

        });
        $('.remove_mobile_navigation').click(function () {
            $('.nav_desktop').removeClass('listing_page_sidebar_active');
            $('body').removeClass('body_overflow');
            $('.moblie_header_overlay').hide();

        });
        /******mobile sidebar end**********/


        /****** authenticate popup ***********/
        $('.open_login_form').click(function () {
            $('.lr_register_outer').hide();
            $('.lr_forgot_pass_outer').hide();
            $('.lr_login_outer').show();
        })

        $('.open_register_form').click(function () {
            $('.lr_login_outer').hide();
            $('.lr_register_outer').show();
        })

        $('.open_forgot_pass_form').click(function () {
            $('.lr_login_outer').hide();
            $('.lr_forgot_pass_outer').show();
        });
        /******* authenticate popup end **********/

        // js for mobile search popup
        $('.mobile_search_button').click(function () {
            $('.mobile_search_box').show();
            $('#mobile_search_input').focus();
            $('body').addClass('body_overflow');

        });
        $('.mobile_search_box_close').click(function () {
            $('.mobile_search_box').hide();
            $('body').removeClass('body_overflow');
        });

        /******* newsletter start **********/
        $("#newsletter_form").validate({
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.insertAfter($("#newsletter_form .input-group"));
            },
            rules: {
                newsletter_email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                newsletter_email: {
                    required: "Enter your email id!",
                    email: "Enter valid email id!"
                }
            },
            submitHandler: function (form) {
                $.ajax({
                    url: "{{ URL::route('save_newsleter') }}",
                    crossDomain: true,
                    type: "POST",
                    data: {'email': $("#newsletter_email").val()},
                    dataType: 'json',
                    success: function (response) {
                        $("#newsletter_return_msg").html(response.msg);
                    }
                });
            }
        });
        
        
        /******* login-form start **********/
        $("#login-form").validate({
            errorElement: 'span',
            rules: {
                login_email: {
                    required: true,
                    email: true
                },
                login_password: {
                    required: true
                }
            },
            messages: {
                login_email: {
                    required: "Enter your festeve account email id!",
                    email: "Enter valid email id!"
                },
                login_password: {
                    required: "Enter your festeve account password!",
                }
            },
            submitHandler: function (form) {
                $.ajax({
                    url: "{{ URL::route('login') }}",
                    type: "POST",
                    data: {'email': $("#login_email").val(),'password': $("#login_password").val()},
                    success: function (response) {
                        if (response.success) {
                            $("#login-msg").html('<p class="alert alert-success">Login successfully</p>');
                            setTimeout(function(){
                                location.reload();
                            },2000);
                        }else{
                            $("#login-msg").html('<p class="alert alert-danger">'+response.message+'</p>');
                        }
                    }
                });
            }
        });
        
        
        /******* login-form start **********/
        $("#register-form").validate({
            errorElement: 'span',
            rules: {
                reg_first_name: {
                    required: true
                },
                reg_last_name: {
                    required: true
                },
                reg_email: {
                    required: true,
                    email:true
                },
                reg_phone: {
                    required: true,
                    number:true,
                    minlength:10,
                    maxlength:10
                },
                reg_password: {
                    required: true,
                    minlength:8
                }
            },
            messages: {
                reg_first_name: {
                    required: "Enter first name!"
                },
                reg_last_name: {
                    required: "Enter last name!"
                },
                reg_email: {
                    required: "Enter your email id!",
                    email:"Enter valid email id!"
                },
                reg_phone: {
                    required: "Enter phone number!",
                    number:"Enter valid phone number!",
                    minlength:"Enter valid phone number!",
                    maxlength:"Enter valid phone number!"
                },
                reg_password: {
                    required: "Enter password!",
                    minlength: "Password must be 8 characters in length!"
                }
            },
            submitHandler: function (form) {
                $.ajax({
                    url: "{{ URL::route('register') }}",
                    type: "POST",
                    data: $("#register-form").serialize(),
                    success: function (response) {
                        if (response.success) {
                            $("#register-msg").html('<p class="alert alert-success">'+response.message+'</p>');
                            setTimeout(function(){
                                location.reload();
                            },2000);
                        }else{
                            $("#register-msg").html('<p class="alert alert-danger">'+response.message+'</p>');
                        }
                    }
                });
            }
        });
        
    });
</script>