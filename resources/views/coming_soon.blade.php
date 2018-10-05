<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <div class="container-fluid static_top_banner"></div>

	<div class="container comming_soon_content">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <a href="{{ url('/')}}"><img src="{{ asset('ws/images/commingsoon.jpg')}}"></a>
                </div>
            </div>
	</div>
        <!-- footer -->
        @include('footer')
        <!-- footer ends -->
    </body>
</html>