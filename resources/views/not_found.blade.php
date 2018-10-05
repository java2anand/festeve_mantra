<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <!--<div class="container-fluid static_top_banner">
            <div class="row">
                <div  class="col-xs-12 text-center">
                    <h1>PAGE NOT FOUND</h1>
                </div>
            </div>
	</div>-->

	<div class="container not_found_content">
            <div class="row">
                <div class="col-xs-12">
                    <h3>Oops!</h3>
                    <p>We can’t seem to find the page you’re looking for</p>
                    <a href="{{ url('/') }}">GO BACK</a>
                </div>
            </div>
	</div>
        <!-- footer -->
        @include('footer')
        <!-- footer ends -->
    </body>
</html>