<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-126265125-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-126265125-1');
</script>
<div class="moblie_header_overlay"></div>
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-xs-3 mobile_nav_section">
                <button><img src="{{asset('ws/images/menu.svg')}}" alt="nav icon"></button>
            </div>
            <div class="col-sm-4 col-xs-6 header-logo-outer">
                <a href="{{ url('/')}}"><img src="{{asset('ws/images/logo.jpg')}}" alt="logo" class="logo"></a>
            </div>
            <div class="col-xs-3 mobile_user_section">
                <button><img src="{{asset('ws/images/user.svg')}}" alt="user icon"></button>
            </div>
            <div class="col-sm-8 nav_desktop">
                <ul class="header_navigation">
                    <li><a href="{{ route('add-event') }}">+festeve</a></li>
                    <li><a href="{{ route('top-hundred') }}">Top 100</a></li>
                    <li><a href="{{ route('categories') }}">categories</a></li>

                    @guest
                        <li><a href="{{ route('login') }}" class="login_link">login</a></li>
                        <li><a href="{{ route('register') }}" class="active_btn">signup</a></li>
                    @else
                        <li><a href="{{ route('user.logout') }}" class="active_btn" onclick="event.preventDefault();document.getElementById('logout-form').submit();">Logout</a></li>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">{{ csrf_field() }}</form>
                    @endguest

                </ul>
            </div>
        </div>
    </div>
</header>