<?php $pages = (isset($page) && !empty($page)) ? $page : ''; ?>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <?php
                $image = Auth::guard('admin')->user()->profile_img;
                $userimage = (isset($image) && !empty($image)) ? $image : '';
                if (file_exists(public_path() . '/admin/profile_image/' . $userimage)) {
                    ?>
                    <img src="{{ asset( 'admin/profile_image/thumb/'.$userimage )}}" class="img-circle" alt="User profile picture"  style="height:45px;"/>
                <?php } else { ?>
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

            <li class="<?= ($pages == 'dashboard') ? 'active' : ''; ?>">
                <a href="{{ route('admin.home')}}">
                    <i class="fa fa-th"></i> <span>Dashboard</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="treeview <?= ($pages == 'add_category' || $pages == 'category_list' || $pages == 'category-sorting') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-tags"></i> <span>Categories</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'category_list') ? 'active' : ''; ?>"><a href="{{ route('admin.category_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_category') ? 'active' : ''; ?>"><a href="{{ route('admin.category_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>

                    <li class="<?= ($pages == 'category-sorting') ? 'active' : ''; ?>"><a href="{{ route('admin.category_sorting') }}"><i class="fa fa-circle-o"></i> Sort Category</a></li>
                </ul>
            </li>

            <!--<li class="treeview <?= ($pages == 'add_type' || $pages == 'type_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-pie-chart"></i> <span>Event Types</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'type_list') ? 'active' : ''; ?>"><a href="{{ route('admin.eventtype_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_type') ? 'active' : ''; ?>"><a href="{{ route('admin.eventtype_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>-->

            <li class="treeview <?= ($pages == 'add_event' || $pages == 'event_list' || $pages == 'event-top-hundred' || $pages == 'home_event' || $pages == 'premium_event' || $pages == 'popular_event') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-calendar-check-o"></i> <span>Events</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'event_list') ? 'active' : ''; ?>"><a href="{{ route('admin.event_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_event') ? 'active' : ''; ?>"><a href="{{ route('admin.event_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>

                    <li class="<?= ($pages == 'event-top-hundred') ? 'active' : ''; ?>"><a href="{{ route('admin.event_top_hundred') }}"><i class="fa fa-circle-o"></i> Top 100</a></li>

                    <li class="<?= ($pages == 'home_event') ? 'active' : ''; ?>"><a href="{{ route('admin.home_event') }}"><i class="fa fa-circle-o"></i> Home Event</a></li>

                    <li class="<?= ($pages == 'premium_event') ? 'active' : ''; ?>"><a href="{{ route('admin.premium_event') }}"><i class="fa fa-circle-o"></i> Premium Event</a></li>

                    <li class="<?= ($pages == 'popular_event') ? 'active' : ''; ?>"><a href="{{ route('admin.popular_event') }}"><i class="fa fa-circle-o"></i> Popular Event</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages == 'add_speaker' || $pages == 'speaker_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-users"></i> <span>Speakers</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'speaker_list') ? 'active' : ''; ?>"><a href="{{ route('admin.speaker_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_speaker') ? 'active' : ''; ?>"><a href="{{ route('admin.speaker_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>


            <li class="treeview <?= ($pages == 'add_organiser' || $pages == 'organiser_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-sitemap"></i> <span>Organisers</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'organiser_list') ? 'active' : ''; ?>"><a href="{{ route('admin.organiser_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_organiser') ? 'active' : ''; ?>"><a href="{{ route('admin.organiser_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>


            <li class="treeview <?= ($pages == 'add_author' || $pages == 'author_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-user"></i> <span>Authors</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'author_list') ? 'active' : ''; ?>"><a href="{{ route('admin.author_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_author') ? 'active' : ''; ?>"><a href="{{ route('admin.author_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages == 'add_story' || $pages == 'story_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-book"></i> <span>Stories </span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'story_list') ? 'active' : ''; ?>"><a href="{{ route('admin.story_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_story') ? 'active' : ''; ?>"><a href="{{ route('admin.story_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages == 'employee_add' || $pages == 'employee_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-user"></i> <span>Our Team</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'employee_list') ? 'active' : ''; ?>"><a href="{{ route('admin.employee_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'emoployee_add') ? 'active' : ''; ?>"><a href="{{ route('admin.employee_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="treeview <?= ($pages == 'add_job' || $pages == 'job_list') ? 'menu-open active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-tasks"></i> <span>Jobs / Vacancy</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= ($pages == 'job_list') ? 'active' : ''; ?>"><a href="{{ route('admin.job_list') }}"><i class="fa fa-circle-o"></i> List</a></li>

                    <li class="<?= ($pages == 'add_job') ? 'active' : ''; ?>"><a href="{{ route('admin.job_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                </ul>
            </li>

            <li class="<?= ($pages == 'queries') ? 'active' : ''; ?>">
                <a href="{{ route('admin.queries_list') }}">
                    <i class="fa fa-phone"></i> <span>Contact Us</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="<?= ($pages == 'newsletter') ? 'active' : ''; ?>">
                <a href="{{ route('admin.newsletter_list') }}">
                    <i class="fa fa fa-envelope"></i> <span>Newsletters</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="<?= ($pages == 'pages_list') || ($pages == 'page_setting') ? 'active' : ''; ?>">
                <a href="{{ route('admin.pages_list') }}">
                    <i class="fa fa-file-text-o"></i> <span>Static Pages</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="<?= ($pages == 'advertisement_list') ? 'active' : ''; ?>">
                <a href="{{ route('admin.advertisement_list') }}">
                    <i class="fa fa-buysellads"></i> <span>Advertisements</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>

            <li class="<?= ($pages == 'setting_list') || ($pages == 'site_setting') ? 'active' : ''; ?>">
                <a href="{{ route('admin.setting_list') }}">
                    <i class="fa fa-cog"></i> <span>Sitesettings</span>
                    <span class="pull-right-container">

                    </span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>