<div class="profile_sec">
    <img src="{{asset('ws/images/dp.png')}}" alt="" />
    <span class="name_span">
        Hello
        <em>{{ !empty(Auth::guard()->user()->name) ? Auth::guard()->user()->name : 'Guest' }}</em>
    </span>
</div>

<ul class="nav nav-tabs tabs-left">
    <li class="{{ Request::segment(1) == 'dashboard' ? 'active' : '' }}"><a href="{{ url('dashboard') }}"><span class="profile_span"></span> Profile</a></li>
    <!--<li><a href="" data-toggle="tab"><span class="event_span"></span> My Events</a></li>-->
    <li class="{{ Request::segment(1) == 'my-events' ? 'active' : '' }}"><a href="{{ url('my-events') }}" ><span class="event_span"></span> My Events</a></li>
    <li class="{{ Request::segment(1) == 'my-stories' ? 'active' : '' }}"><a href="{{ url('my-stories') }}" ><span class="story_span"></span> My Stories</a></li>
    <li class="{{ Request::segment(1) == 'favourite-events' ? 'active' : '' }}"><a href="{{ url('favourite-events') }}" ><span class="fav_span"></span> My Favourites</a></li>
    <li><a href="{{ url('add-event') }}" ><span class="crevent_span"></span> Create Event</a></li>
    <li><a href="{{ url('logout') }}" ><span class="logout_span"></span> Logout</a></li>
</ul>