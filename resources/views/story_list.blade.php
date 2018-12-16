<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer">
        <!-- header -->
        @include('header')
        <!-- header ends -->

        <!-- top banner section -->
        <div class="container-fluid story_list_banner">
            <div class="banner_overlay"></div>
            <div class="row">
                <h1 class="text-center stories_page_heading">Stories
                    <small>Music, Conference, Parties ans All</small>
                </h1>
            </div>
        </div>
        <!-- top banner ends -->

        <!-- content section -->
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <ul class="story_list_outer_ul">
                        <li class="story_list_outer_ul_left">
                            <div class="row">

                                @foreach($arr_story as $story)
                                <div class="col-sm-6 text-center">
                                    <div class="list_story_item">
                                        <a href="{{ url('story-detail/'.$story->slug)}}"><img src="{{ asset('images/story/'.$story->image)}}" class="img-responsive" alt="banner"></a>
                                        <p class="list_cat"><a href="{{url('event-category/'.$story->category->slug)}}">{{$story->category->category_name}}</a></p>
                                        <p class="list_cat_title"><a href="{{ url('story-detail/'.$story->slug)}}">{{$story->story_name}}</a></p>
                                        <p class="list_cat_by">By <span>{{$story->narrator_name}}</span> on <span>{{date('d-F-Y',strtotime($story->created_at))}}</span></p>
                                        <p class="list_cat_desc">{!!$story->short_desc!!}</p>
                                        <p class="list_cat_readmore"><a href="{{ url('story-detail/'.$story->slug)}}">Read More</a></p>
                                    </div>
                                </div>
                                @endforeach


                                <div class="col-xs-12 text-center list_pager_outer"><!-- pager section -->
                                    {{ $arr_story->links() }}
                                    <!--<nav> <ul class="pagination"> <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li> <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li> <li><a href="#">2</a></li> <li><a href="#">3</a></li> <li><a href="#">4</a></li> <li><a href="#">5</a></li> <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li> </ul> </nav>-->
                                </div><!-- pager section ends -->
                            </div>
                        </li>
                        <li class="story_list_outer_ul_right">
                            <!-- category filter -->
                            <div class="listing_left_sidebar_inner list_filter_spacing">
                                <h4>Categories</h4>
                                <ul>
                                    @foreach($arr_category as $k=>$cat)
                                        <li>
                                            <input type="checkbox" id="filter_5">
                                            <label for="filter_{{$k}}">{{$cat->category_name}}</label>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <!-- category filter ends -->

                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- content section ends -->
        <!-- footer -->
        @include('footer')
        <!-- footer ends -->
    </body>
</html>