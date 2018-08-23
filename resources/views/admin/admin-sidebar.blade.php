<?php $pages = (isset($page) && !empty($page)) ? $page : ''; ?>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <?php
                    $image = Auth::guard('admin')->user()->profile_img;
                    $userimage = (isset($image) && !empty($image)) ? $image: '';
                    if (file_exists( public_path() . '/admin/profile_image/' . $userimage)) {?>
                <img src="{{ asset( 'admin/profile_image/thumb/'.$userimage )}}" class="img-circle" alt="User profile picture"  style="height:45px;"/>
                <?php } else {?>
                        <img src="{{asset('dist/img/user2-160x160.jpg' )}} " class="img-circle" alt="User profile picture" />
                <?php } ?>
            </div>
            <div class="pull-left info">
                <p>{{ Auth::guard('admin')->user()->firstname. ' '.Auth::guard('admin')->user()->lastname }}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>

            <li class="<?= ($pages=='dashboard') ? 'active' : ''; ?>">
                <a href="{{ route('admin.home')}}">
                    <i class="fa fa-th"></i> <span>Dashboard</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="treeview <?= ($pages=='add_category' || $pages == 'category_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-tags"></i> <span>Categories</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages=='category_list') ? 'active' : ''; ?>"><a href="{{ route('admin.category_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages=='add_category') ? 'active' : ''; ?>"><a href="{{ route('admin.category_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages=='add_type' || $pages == 'type_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-pie-chart"></i> <span>Event Types</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages=='type_list') ? 'active' : ''; ?>"><a href="{{ route('admin.eventtype_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages=='add_type') ? 'active' : ''; ?>"><a href="{{ route('admin.eventtype_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages=='add_event' || $pages == 'event_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-calendar-check-o"></i> <span>Events</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages=='event_list') ? 'active' : ''; ?>"><a href="{{ route('admin.event_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages=='add_event') ? 'active' : ''; ?>"><a href="{{ route('admin.event_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages=='add_speaker' || $pages == 'speaker_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-users"></i> <span>Event Speakers</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages=='speaker_list') ? 'active' : ''; ?>"><a href="{{ route('admin.eventspeaker_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages=='add_speaker') ? 'active' : ''; ?>"><a href="{{ route('admin.eventspeaker_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>


            <li class="treeview <?= ($pages=='add_organiser' || $pages == 'organiser_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-sitemap"></i> <span>Event Organisers</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages=='organiser_list') ? 'active' : ''; ?>"><a href="{{ route('admin.eventorganiser_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages=='add_organiser') ? 'active' : ''; ?>"><a href="{{ route('admin.eventorganiser_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>


            <li class="treeview <?= ($pages=='add_story' || $pages == 'story_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-book"></i> <span>Stories </span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages=='story_list') ? 'active' : ''; ?>"><a href="{{ route('admin.story_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages=='add_story') ? 'active' : ''; ?>"><a href="{{ route('admin.story_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="<?= ($pages=='newsletter') ? 'active' : ''; ?>">
                <a href="{{ route('admin.newsletter_list') }}">
                    <i class="fa fa fa-envelope"></i> <span>Newsletters</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="<?= ($pages=='site_setting') ? 'active' : ''; ?>">
                <a href="{{ route('admin.sitesetting') }}">
                    <i class="fa fa-cog"></i> <span>Sitesettings</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>