<footer class="footer">
    <div class="container">
        <div class="row">

            <div class="col-sm-3 col-xs-12 footer_items">
                <h3 class="footer_headings">Our Story</h3>
                <ul>
                    <li><a href="{{ url('about-us')}}">About us</a></li>
                    <li><a href="{{ url('our-team')}}">Our Team</a></li>
                    <li><a href="{{ url('careers')}}">We are hiring!</a></li>
                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items">
                <h3 class="footer_headings">Get Inspried</h3>
                <ul>
                    <li><a href="{{ url('stories')}}">Festeve stories</a></li>
                    <li><a href="#">Submit your event</a></li>

                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items">
                <h3 class="footer_headings">policies</h3>
                <ul>

                    <li><a href="{{ url('terms-conditions')}}">T&C </a></li>
                    <li><a href="{{ url('privacy-policy')}}">Privacy Policy</a></li>
                    <li><a href="{{ url('contact-us')}}">Contact us</a></li>
                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items">
                <h3 class="footer_headings">More</h3>
                <ul>
                    <li><a href="#">Advertise with us</a></li>
                    <li><a href="#">Fest job seeks</a></li>
                    <li><a href="#">Organizers</a></li>
                </ul>
            </div>
            <div class="col-sm-3 col-xs-12 footer_items">
                <img src="{{ asset('ws/images/logo-white.png')}}" alt="footer logo" class="footer_logo">
                <ul class="footer_address"><li class="add_icon"><a href="#">{{ $sitedata['address'] }}</a></li></ul>
            </div>



        </div>
    </div>
    <div class="footer_new_section">
        <div class="container ">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <span>CONNECT-<span>
                    <a href="{{ $sitedata['facebook_id'] }}" target="_blank"><img src="{{ asset('ws/images/fb.jpg')}}"></a>
                    <a href="{{ $sitedata['twitter_id'] }}" target="_blank"><img src="{{ asset('ws/images/tw.jpg')}}"></a>
                    <a href="{{ $sitedata['linked_id'] }}" target="_blank"><img src="{{ asset('ws/images/in.jpg')}}"></a>
                    <a href="{{ $sitedata['instagram_id'] }}" target="_blank"><img src="{{ asset('ws/images/insta.jpg')}}"></a>
                    <a href="{{ $sitedata['youtube_id'] }}" target="_blank"><img src="{{ asset('ws/images/in.jpg')}}"></a>

                </div>
                <div class="col-sm-4 col-xs-12 text-center">
                    <img src="{{ asset('ws/images/add_phone.jpg')}}"> <a href="tel:{{$sitedata['mobile_number']}}">{{ '+91-'.$sitedata['phone_number'].', +91-'.$sitedata['mobile_number']}}</a>
                </div>
                <div class="col-sm-4 col-xs-12 text-right">
                    <img src="{{ asset('ws/images/add_email.jpg')}}"> <a href="mailto:{{$sitedata['contact_email']}}">{{$sitedata['contact_email']}}</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-center">
        <p><span>Copyright @2018.</span> {{$sitedata['company_title']}}. All Rights Reserved</p>
    </div>
</footer>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="{{asset('ws/js/jquery.min.js')}}"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="{{asset('ws/js/bootstrap.min.js')}}"></script>
<script src="{{asset('ws/js/swiper.min.js')}}"></script>
<script src="{{asset('ws/js/jquery.validate.min.js')}}"></script>
<script>
    $.ajaxSetup({
        headers: {'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')}
    })
</script>