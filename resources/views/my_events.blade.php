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
                    <div class="tab-pane active" id="event">
                        <h2>My Events</h2>
                        <div class="right_inner">
                            <?php if(count($arr_events) == 0){ ?>
                            <div class="event_first">
                                <p>You have not added any event / festival till now</p>
                                <a href="{{ url('add-event')}}" class="btn">CREATE YOUR EVENT</a>
                            </div>
                            <?php }else{ ?>
                            <div class="event_third">
                                
                                <?php foreach($arr_events as $event){ ?>
                                <div class="right_inner_child ">
                                    <div class="upcoming_item_container">
                                        <div class="upcoming_item_image">
                                            <a href="javascript:void(0)">
                                                @if(isset($event->event_image) && !empty($event->event_image) && file_exists(public_path() . '/images/event/' . $event->event_image))
                                                <img src="{{ asset( 'images/event/'.$event->event_image)}}" alt="event_banner">
                                                @else
                                                <img src="{{ asset( 'ws/images/no-image.jpg')}}" alt="event_banner">
                                                @endif
                                            </a>
                                        </div>
                                        <div class="upcoming_item_info {{ ($event->premium == 1) ? 'f_premium' : (($event->premium == 2) ? 'f_favourite' : '')  }}">
                                            <span class="event_type_icon"><img src="{{asset( 'images/category/mini_icon/'.$event->category->mini_icon)}}" alt="category_event"></span>
                                            <p class="uc_event_name"><a href="javascript:void(0)">{{ substr($event->title,0,80) }}</a></p>
                                            <p class="uc_event_date">{{  ($event->start_date != $event->end_date ) ?  date('d M', strtotime($event->start_date)).' - '. date('d M', strtotime($event->end_date)).date(', Y')  : date('d M Y', strtotime($event->start_date))}}</p>

                                        </div>
                                    </div>
                                    <div class="view_deal">
                                        <?php if($event->status == 1){ ?>
                                            <a href="{{ url('event-detail/'.$event->slug)}}" class="btn">VIEW</a>
                                            <a href="javascript:void(0);" class="">Approved</a>
                                        <?php }else{ ?>
                                            <a href="" class="btn">TRACK</a>
                                            <?php if($event->status == 0){ ?>
                                                <a href="javascript:void(0);" class="">Pending</a>
                                            <?php }else{ ?>
                                                <a href="javascript:void(0);" class="">Declined</a>
                                            <?php } ?>
                                        <?php } ?>
                                    </div>
                                    
                                  
                                    <button class="btn edit_btn"><?= $event->status != 1 ? 'EDIT' : 'LIVE' ?></button>
                                </div>
                                
                                <?php } ?>
                                <div class="pagination_div">
                                    {{ $arr_events->links() }}
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
                            <?php } ?>
                        </div>

                        <div class="event_second"style="display: none;">
                            <h4>Thank You!</h4>
                            <p>We’ve received your request for event submission. <br />
                                Sit Back and relax while we receive your event. <br />
                                We will drop the update in your inbox in next 48 hours</p>
                            <div class="timeline">
                                <p>Track your event submission status</p>
                                <ul>
                                    <li class="active"><span>Submitted</span></li>
                                    <li><span>Under Review</span></li>
                                    <li><span>Approved/Declined</span></li>
                                    <li><span>Event Live</span></li>
                                </ul>
                            </div>
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