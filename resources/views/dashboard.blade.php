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
                    <div class="tab-pane active" id="profile">
                        <h2>Personal Information</h2>
                        <div class="right_inner profile_div">
                            <form method="post" action="">
                                {!! csrf_field() !!}
                                <ul class="form_ul">
                                    <li>
                                        <label for="name">Name</label>
                                        <input value="{{ !empty($user_data->name) ? $user_data->name : ''}}" type="text" name="name" id="name" placeholder="Full Name" />
                                    </li>
                                    <li>
                                        <label for="email">Email ID</label>
                                        <input value="{{ !empty($user_data->email) ? $user_data->email : ''}}" type="email" disabled placeholder="Email Address" />
                                    </li>
                                    
                                    <li>
                                        <label for="location">Location</label>
                                        <textarea name="location" id="location" >{{ !empty($user_data->address) ? $user_data->address : ''}}</textarea>
                                    </li>
                                    <li>
                                        <label for="mobile">Mobile No.</label>
                                        <input type="text" value="{{ !empty($user_data->phone) ? $user_data->phone : ''}}" name="mobile" id="mobile" placeholder="Mobile Number" />
                                        <!--<button type="button" class="btn" >Edit</button>-->
                                    </li>
                                    <li>
                                        <button type="submit" class="btn" >Save</button>
                                    </li>
                                  
                                    
                                </ul>

                            </form>

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