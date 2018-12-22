<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body>
        <!-- header -->
        <div class="moblie_header_overlay"></div>
        @include('header')
        <!-- header ends -->
        <div class="page_inner_parent">
            <div class="page_inner container">
                <div class="left_tab">
                    <!----- my profile common tab --->
                    @include('dashboard_leftnav')
                </div>
                <div class="right_content tab-content">

                    <div class="tab-pane active" id="fav">
                        <h2>My Favourites</h2>
                        <div class="right_inner fav_item_parent">
                            <p class="fav_item">Your Favourite Events are Saved here...</p>

                            @foreach($favorites as $k=>$fav)
                                <?php $event = $fav->event;?>
                                <div class="right_inner_child">
                                    <div class="event_img">
                                        <img src="{{asset('ws/images/event.png')}}" alt="" />
                                    </div>
                                    <h3>{{ $event->title }} <span>by Anurag on 27-July-2018</span></h3>
                                    <span class="music_txt">MUSIC</span>
                                    <div class="view_deal">
                                        <button class="btn" >VIEW</button>
                                        <a href="javascript:void(0)" class="btn like_btn" ><i class="fa fa-heart-o"></i> LIKE</a>
                                    </div>

                                </div>
                            @endforeach
                        </div>

                        <div class="pagination_div">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">«</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">»</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <!-- footer -->
        @include('footer')
        <!-- Initialize Swiper -->
    </body>
</html>