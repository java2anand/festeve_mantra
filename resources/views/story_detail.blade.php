<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->
        <link href="{{asset('ws/css/star-rating.min.css')}}" rel="stylesheet">
        <!-- evnt page content section -->
        <div class="container event_content_section_outer">
            <div class="row">
                <div class="col-md-9 col-sm-8 col-xs-12 event_content_left"><!-- left section -->
                    <div class="row">

                        <div class="col-xs-12">
                            <div class="event_inner_section event_text">
                                <img src="{{ asset('images/story/'.$story->image) }}" class="img-responsive" style="width:100%;height:210px;">
                                <h1 class="story_detail_heading text-center">{{ $story->story_name}}</h1>
                                <p class="list_cat_by text-center">By <span>{{$story->narrator_name}}</span> on <span>{{date('d-F-Y',strtotime($story->created_at))}}</span></p>
                                <p>
                                    {!! $story->description !!}
                                </p>
                            </div>
                        </div>
                    </div>


                </div><!-- left section ends -->
                <div class="col-md-3 col-sm-4 col-xs-12"><!-- right section -->

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner mt_0">
                                <p class="s_writter_img text-center"><img src="{{ asset('images/story/narrator/'.$story->narrator_image) }}"></p>
                                <h5 class="s_writter_name text-center">{{ $story->narrator_name}}
                                    <small>{{ $story->narrator_about}}</small>
                                </h5>

                                <p>{!! $story->narrator_description !!}</p>
                                <p  class="event_social_links text-center">
                                    <a href="{{ $story->facebook_id}}"><img src="{{ asset('ws/images/facebook.png') }}"></a>
                                    <a href="{{ $story->twitter_id}}"><img src="{{ asset('ws/images/twitter.png') }}"></a>
                                    <a href="{{ $story->youtube_id}}"><img src="{{ asset('ws/images/youtube.png') }}"></a>
                                    <a href="{{ $story->instagram_id}}"><img src="{{ asset('ws/images/instagram.png') }}"></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="event_right_bottom_inner">
                                <h5>Latest Posts</h5>

                                @if(count($arr_story)>0)
                                @foreach($arr_story as $top_story)
                                <div>
                                    <a href="{{ url('story-detail/'.$top_story->slug)}}">
                                        <img src="{{ asset('images/story/'.$top_story->image) }}" class="img-responsive">
                                        <p class="s_list_title">{{$top_story->story_name}}
                                            <span>{{ date('F d, Y',strtotime($top_story->created_at)) }}</span>
                                        </p>
                                    </a>
                                </div>
                                @endforeach
                                @endif

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- event page content section ends -->

        <!--<div class="container cat_list_add_event s_add_evet">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <span>Want thousands of event goes to read about your cherishable event story?</span> <a href="#">SUBMIT</a>
                </div>
            </div>
        </div>-->

        <!-- footer -->
        @include('footer')
        <!-- footer ends -->

    </body>
</html>