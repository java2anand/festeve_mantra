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
            <div class="col-xs-2 mobile_nav_section">
                <button><img src="{{asset('ws/images/menu.svg')}}" alt="nav icon"></button>
            </div>
            <div class="col-sm-4 col-xs-6 header-logo-outer">
                <a href="{{ url('/')}}"><img src="{{asset('ws/images/logo.png')}}" alt="logo" class="logo"></a>
            </div>
            <div class="col-xs-4 mobile_user_section">
                @guest
                    <button data-toggle="modal" data-target="#login_register_popup"><img src="{{asset('ws/images/user.svg')}}" alt="user icon"></button>
                @else
                    <button onclick='window.location.href="{{ url('dashboard') }}"'><img src="{{asset('ws/images/user.svg')}}" alt="user icon"></button>
                @endguest

                <button class="mobile_search_button"><img src="{{asset('ws/images/search.png')}}" alt="user icon"></button>
            </div>
            <div class="col-sm-8 nav_desktop">
                
                <ul class="header_navigation">
                    <li><a href="{{ route('coming-soon') }}">+festeve</a></li>
                    <li><a href="{{ route('top-hundred') }}">Top 100</a></li>
                    <li><a href="{{ route('categories') }}">categories</a></li>

                    @guest
                        <li class="nav_m_hide">
                            <a href="javascript:void(0)" class="active_btn" data-toggle="modal" data-target="#login_register_popup">Login
                            </a>
                        </li>
                    @else
                        <li class="nav_m_hide">
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle active_btn" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hi {{ !empty(Auth::user()) ? Auth::user()->first_name : ''}}
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="{{ url('dashboard') }}">Dashboard</a>
                                    <a class="dropdown-item" href="{{ url('my-events') }}">My Events</a>
                                    <a class="dropdown-item" href="{{ url('my-stories') }}">My Stories</a>
                                    <a class="dropdown-item" href="{{ url('favourite-events') }}">My Favourites</a>
                                    <a class="dropdown-item" href="{{ url('logout') }}">Logout</a>
                                </div>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
            
            
            <div class="col-sm-8 nav_desktop nav_m_show">
                
                
                <p class="mobile_logo_outer">
                    <img src="{{asset('ws/images/logo.png')}}" alt="logo" class="logo_mobile">
                    <button class="remove_mobile_navigation"><img src="{{asset('ws/images/close.png')}}" alt="close-button"></button>
                </p>
                
                <ul class="header_navigation">
                    <li class="nav_m_show"><a href="{{ route('coming-soon') }}">+festeve</a></li>
                    <li class="nav_m_show"><a href="{{ route('top-hundred') }}">Top 100</a></li>
                    <li class="nav_m_show"><a href="{{ route('categories') }}">categories</a></li>
                    <li class="nav_m_show"><a href="{{ route('about-us')}}">About us</a></li>
                    <li class="nav_m_show"><a href="{{ route('our-team')}}">Our Team</a></li>
                    <li class="nav_m_show"><a href="{{ route('careers')}}">We are hiring!</a></li>
                    @guest
                    @else
                        <li class="nav_m_show"><a href="{{ url('dashboard') }}">Dashboard</a></li>
                        <li class="nav_m_show"><a href="{{ url('my-events') }}">My Events</a></li>
                        <li class="nav_m_show"><a href="{{ url('my-stories') }}">My Stories</a></li>
                        <li class="nav_m_show"><a href="{{ url('favourite-events') }}">My Favourites</a></li>
                        <li class="nav_m_show"><a href="{{ url('logout') }}">Logout</a></li>
                    @endguest
                </ul>
            </div>
            
        </div>
    </div>
</header>
<!-- header ends -->