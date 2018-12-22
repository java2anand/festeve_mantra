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
                            <div class="event_first">
                                <p>You have not added any event / festival till now</p>
                                <button type="button" id="create_event" class="btn" >CREATE YOUR EVENT</button>
                            </div>

                            <div class="event_third">
                                <div class="right_inner_child">
                                    <div class="event_img">
                                        <img src="{{asset('ws/images/event.png')}}" alt="" />
                                    </div>
                                    <h3>New Food Event 5</h3>
                                    <div class="view_deal">
                                        <button class="btn" >VIEW</button>
                                        <a href="javascript:void(0)" >Activate</a>
                                    </div>
                                    <button class="btn edit_btn">EDIT</button>
                                </div>
                                <div class="right_inner_child ">
                                    <div class="event_img">
                                        <img src="{{asset('ws/images/event.png')}}" alt="" />
                                    </div>
                                    <h3>New Food Event 5</h3>
                                    <div class="view_deal">
                                        <button class="btn" >VIEW</button>
                                        <a href="javascript:void(0)" >Activate</a>
                                    </div>
                                    <button class="btn edit_btn">EDIT</button>
                                </div>
                                <div class="right_inner_child ">
                                    <div class="event_img">
                                        <img src="{{asset('ws/images/event.png')}}" alt="" />
                                    </div>
                                    <h3>New Food Event 5</h3>
                                    <div class="view_deal">
                                        <button class="btn" >VIEW</button>
                                        <a href="javascript:void(0)" >Activate</a>
                                    </div>
                                    <button class="btn edit_btn">EDIT</button>
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

                        <div class="event_second">
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