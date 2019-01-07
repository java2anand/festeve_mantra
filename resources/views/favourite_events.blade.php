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
                                <div class="right_inner_child ">
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="{{ url('event-detail/'.$event->slug)}}">
                                                @if(isset($event->event_image) && !empty($event->event_image) && file_exists(public_path() . '/images/event/' . $event->event_image))
                                                <img src="{{ asset( 'images/event/'.$event->event_image)}}" alt="event_banner">
                                                @else
                                                <img src="{{ asset( 'ws/images/no-image.jpg')}}" alt="event_banner">
                                                @endif
                                            </a>
                                        </div>
                                        <div class="upcoming_item_info {{ ($event->premium == 1) ? 'f_premium' : (($event->premium == 2) ? 'f_favourite' : '')  }}">
                                            <span class="event_type_icon"><img src="{{asset( 'images/category/mini_icon/'.$event->category->mini_icon)}}" alt="category_event"></span>
                                            <p class="uc_event_name"><a href="{{ url('event-detail/'.$event->slug)}}">{{ substr($event->title,0,80) }}</a></p>
                                            <p class="uc_event_date">{{  ($event->start_date != $event->end_date ) ?  date('d M', strtotime($event->start_date)).' - '. date('d M', strtotime($event->end_date)).date(', Y')  : date('d M Y', strtotime($event->start_date))}}</p>

                                        </div>
                                    </div>
                                    
                                    <div class="view_deal">
                                        <a href="{{ url('event-detail/'.$event->slug)}}" class="btn">View</a>
                                        <a href="javascript:void(0)" class="btn like_btn" >Remove</a>
                                    </div>

                                </div>
                            @endforeach
                        </div>

                        <div class="pagination_div">
                            {{ $favorites->links() }}
                            <!--<ul class="pagination">
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
                            </ul>-->
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