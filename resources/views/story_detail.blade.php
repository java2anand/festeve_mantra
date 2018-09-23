<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <link href="{{asset('ws/css/star-rating.min.css')}}" rel="stylesheet">

        <!-- header -->
        @include('header')
        <!-- header ends -->

        <!-- evnt page content section -->
        <div class="container event_content_section_outer">
            <div class="row">
                <div class="col-md-9 col-sm-8 col-xs-12 event_content_left"><!-- left section -->
                    <div class="row">

                        <div class="col-xs-12">
                            <div class="event_inner_section event_text">
                                <img src="images/img_story.jpg" class="img-responsive" style="width:100%;">
                                <h1 class="story_detail_heading text-center">{{ $story->story_name}}</h1>
                                <p class="list_cat_by text-center">By <span>Kapil</span> on <span>27-july-2018</span></p>
                                <p>
                                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45
                                    BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of
                                    the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical
                                    literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
                                    Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very
                                    popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section
                                    1.10.32.
                                </p>
                                <p>vil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.
                                    The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                </p>

                            </div>
                        </div>
                    </div>


                </div><!-- left section ends -->
                <div class="col-md-3 col-sm-4 col-xs-12"><!-- right section -->

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner mt_0">
                                <p class="s_writter_img text-center"><img src="images/founder.jpg"></p>
                                <h5 class="s_writter_name text-center">Username here
                                    <small>Gurgaon, India</small>
                                </h5>

                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature
                                    from 45 BC,</p>
                                <p  class="event_social_links text-center">
                                    <a href="#"><img src="images/link.png"></a>
                                    <a href="#"><img src="images/facebook.png"></a>
                                    <a href="#"><img src="images/twitter.png"></a>
                                    <a href="#"><img src="images/youtube.png"></a>
                                    <a href="#"><img src="images/instagram.png"></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner">
                                <h5>Latest Posts</h5>
                                <div>
                                    <a href="#">
                                        <img src="images/img_story.jpg" class="img-responsive">
                                        <p class="s_list_title">Contrary to popular belief, Lorem Ipsum
                                            <span>June 16, 2018</span>
                                        </p>
                                    </a>
                                </div>
                                <div>
                                    <a href="#">
                                        <img src="images/img_story.jpg" class="img-responsive">
                                        <p class="s_list_title">Contrary to popular belief, Lorem Ipsum
                                            <span>June 16, 2018</span>
                                        </p>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- event page content section ends -->

        <div class="container cat_list_add_event s_add_evet">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <span>Want thousands of event goes to read about your cherishable event story?</span> <a href="#">SUBMIT</a>
                </div>
            </div>
        </div>

        <!-- footer -->
        @include('footer')
        <!-- footer ends -->

    </body>
</html>