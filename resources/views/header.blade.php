<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-126265125-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'UA-126265125-1');
</script>
<!-- header -->
<div class="moblie_header_overlay"></div>
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-xs-3 mobile_nav_section">
                <button><img src="{{asset('ws/images/menu.svg')}}" alt="nav icon"></button>
            </div>
            <div class="col-sm-4 col-xs-6 header-logo-outer">
                <a href="{{ url('/')}}"><img src="{{asset('ws/images/logo.png')}}" alt="logo" class="logo"></a>
            </div>
            <div class="col-xs-3 mobile_user_section">
                <button data-toggle="modal" data-target="#login_register_popup"><img src="{{asset('ws/images/user.svg')}}" alt="user icon"></button>
            </div>
            <div class="col-sm-8 nav_desktop">
                <p class="mobile_logo_outer">
                    <img src="{{asset('ws/images/logo.png')}}" alt="logo" class="logo_mobile">
                    <button class="remove_mobile_navigation"><img src="{{asset('ws/images/close.png')}}"></button>
                </p>
                <ul class="header_navigation">
                    <li><a href="{{ route('add-event') }}">+festeve</a></li>
                    <li><a href="{{ route('top-hundred') }}">Top 100</a></li>
                    <li><a href="{{ route('categories') }}">categories</a></li>

                    @guest
                        <li class="nav_m_hide"><a href="javascript:void(0)" class="active_btn" data-toggle="modal" data-target="#login_register_popup">Login</a></li>
                    @else
                        <li><a href="{{ route('user.logout') }}" class="active_btn" onclick="event.preventDefault();document.getElementById('logout-form').submit();">Logout</a></li>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">{{ csrf_field() }}</form>
                    @endguest
                </ul>
            </div>
        </div>
    </div>
</header>
<!-- header ends -->