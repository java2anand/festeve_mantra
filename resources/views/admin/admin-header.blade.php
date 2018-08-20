<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="_token" content="{!! csrf_token() !!}"/>
        <title>Festeve Mantra</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="{{ asset('public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{ asset('public/admin/bower_components/font-awesome/css/font-awesome.min.css') }}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{ asset('public/admin/dist/css/AdminLTE.min.css') }}">
        <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="{{ asset('public/admin/dist/css/skins/_all-skins.min.css') }}">
        <link rel="stylesheet" href="{{ asset('public/admin/jquery.growl.css') }}">
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

        <style>
            .error{
                color:red;
            }
        </style>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>F</b>M</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Festeve</b>Mantra</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                    <?php
                                        $image = Auth::guard('admin')->user()->profile_img;
                                        $userimage = (isset($image) && !empty($image)) ? $image: '';
                                        if (file_exists( public_path() . '/admin/profile_image/' . $userimage)) {?>
                                            <img src="{{ asset( 'public/admin/profile_image/'.$userimage )}}" class="user-image" alt="User profile picture" />
                                    <?php } else {?>
                                            <img src="{{ asset('public/admin/dist/img/user2-160x160.jpg' )}} " class="user-image" alt="User profile picture" />
                                    <?php } ?>

                                    <!--<img src="{{ asset('public/admin/dist/img/user2-160x160.jpg')}}"  alt="">-->
                                    <span class="hidden-xs">{{ Auth::guard('admin')->user()->firstname. ' '.Auth::guard('admin')->user()->lastname }}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <?php
                                            $image = Auth::guard('admin')->user()->profile_img;
                                            $userimage = (isset($image) && !empty($image)) ? $image: '';
                                            if (file_exists( public_path() . '/admin/profile_image/' . $userimage)) {?>
                                                <img src="{{ asset( 'public/admin/profile_image/'.$userimage )}}" class="img-circle" alt="User profile picture" />
                                        <?php } else {?>
                                                <img src="{{ asset('public/admin/dist/img/user2-160x160.jpg' )}} " class="img-circle" alt="User profile picture" />
                                        <?php } ?>

                                        <p>
                                            {{ Auth::guard('admin')->user()->firstname. ' '.Auth::guard('admin')->user()->lastname }}
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="{{ route('admin.profile')}}" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="{{ route('admin.logout')}}" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                        </ul>
                    </div>
                </nav>
            </header>