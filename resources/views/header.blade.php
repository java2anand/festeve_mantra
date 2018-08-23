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
						<li><a href="#">+festeve</a></li>
						<li><a href="#">Top 100</a></li>
						<li><a href="#">categories</a></li>
						<li><a href="{{ route('login') }}" class="login_link">login</a></li>
						<li><a href="{{ route('register') }}" class="active_btn">signup</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>