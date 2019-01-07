<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer static_pages add_event_page">
        <!-- header -->
        <div class="moblie_header_overlay"></div>
        @include('header')
        <!-- header ends -->
        <!-- add story form outer -->
        <div class="container add_event_form">
            <form>
                <!-- top heading and buttons -->
                <div class="row">
                    <div class="col-sm-6 col-xs-12">
                        <h1 class="home_section_heading"><span>Create</span> Event </h1>
                        <p class="add_evet_subheading">3 Steps: Details - Organise - Review</p>
                    </div>
                    <!--<div class="col-sm-6 col-xs-12 addevent_top_buttons">
                        <label class="view_event_btn">PREVIEW</label>
                        <label class="add_event_btn" for="event_final_update_btn">SAVE</label>
                    </div>-->

                </div>
                <!-- ends -->

                <!-- Event detail section -->
                <div class="row add_evet_form_sections">
                    <div class="col-xs-12">
                        <h3  class="home_section_heading add_event_inner_heading"><span>Step 1 -</span> Event Details</h3>
                        <div class="form-group">
                            <label>Event Title</label>
                            <input type="text" class="form-control" placeholder="Event Title">
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control">
                                <option>Select Category</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" placeholder="Description"></textarea>
                        </div>

                        <div class="event_date_titme_outer">
                            <div class="form-group fg_50 m_100 fpaddingright">
                                <label style="width:100%;">Starts</label>
                                <div class="fg_50">
                                    <input type="text" class="form-control cal_icon" placeholder="10/22/2018">
                                </div>
                                <div class="fg_50 fpaddingleft">
                                    <input type="text" class="form-control" placeholder="8:00PM">
                                </div>
                            </div>

                            <div class="form-group fg_50 m_100 fpaddingleft">
                                <label style="width:100%;">Ends</label>
                                <div class="fg_50">
                                    <input type="text" class="form-control cal_icon" placeholder="10/22/2018" >
                                </div>
                                <div class="fg_50 fpaddingleft">
                                    <input type="text" class="form-control" placeholder="8:00PM">
                                </div>
                            </div>
                            <p class="event_small_inline_btns">
                                <button class="event_small_btns" type="button"><img src="{{ asset('ws/images/list.png')}}">  Schedule Event</button>
                                <label for="attach_event_file" class="event_small_btns"><img src="{{ asset('ws/images/file_attach.png') }}"> Attach File</label>
                                <input type="file" id="attach_event_file" style="display:none;">
                            </p>
                        </div>
                        <div class="form-group">
                            <label style="width:100%;">Speaker Name</label>
                            <input type="text" class="form-control event_sp_name" placeholder="Enter Speaker Name">
                            <label for="attach_speaker_file" class="event_sp_image">Add Image</label>
                            <input type="file" id="attach_speaker_file" style="display:none;">
                        </div>
                        <div class="form-group">
                            <label>Speaker Description</label>
                            <textarea class="form-control" placeholder="Enter Description"></textarea>
                        </div>
                        <p class="event_small_inline_btns">
                            <button class="event_small_btns clr_gray m_100" type="button">Link to Faceboor or Twitter</button>
                            <button class="event_small_btns pull-right m_100" type="button"><img src="{{ asset('ws/images/add-user-button.png') }}"> Add New Speaker</button>
                        </p>

                        <div class="event_date_titme_outer">
                            <label style="width:100%;">Location</label>
                            <div class="form-group fg_50 m_100 fpaddingright">
                                <input type="text" class="form-control" placeholder="Enter Venue Name">
                            </div>
                            <div class="form-group fg_50 m_100 fpaddingleft">
                                <input type="text" class="form-control" placeholder="City">
                            </div>

                            <div class="form-group fg_50 m_100 fpaddingright">
                                <input type="text" class="form-control" placeholder="Address">
                            </div>
                            <div class="form-group fg_50 m_100 fpaddingleft">
                                <div class="fg_50">
                                    <input type="text" class="form-control" placeholder="State">
                                </div>
                                <div class="fg_50 fpaddingleft">
                                    <input type="text" class="form-control" placeholder="Pincode">
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                <!-- ends -->

                <!-- Event Organiser section -->
                <div class="row add_evet_form_sections">
                    <div class="col-xs-12">
                        <h3  class="home_section_heading add_event_inner_heading"><span>Step 2 -</span>  Organiser</h3>
                        <div class="form-group">
                            <label>Organiser Title</label>
                            <input type="text" class="form-control" placeholder="Enter Organiser Title">
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" placeholder="Description"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Website URL</label>
                            <input type="text" class="form-control" placeholder="Website Url">
                        </div>
                        <div class="form-group">
                            <label>Ticket URL (if any)</label>
                            <input type="text" class="form-control" placeholder="Enter Ticket URL">
                        </div>
                        <div class="form-group fg_50 m_100 fpaddingright">
                            <label>Facebook URL(if any)</label>
                            <input type="text" class="form-control" placeholder="Enter Url">
                        </div>
                        <div class="form-group fg_50 m_100 fpaddingleft">
                            <label>Twitter URL(if any)</label>
                            <input type="text" class="form-control" placeholder="Enter Url">
                        </div>

                    </div>
                </div>
                <!-- ends -->

                <!-- Event Revie and Submit section -->
                <!--<div class="row add_evet_form_sections">
                    <div class="col-xs-12">
                        <h3  class="home_section_heading add_event_inner_heading"><span>Step 3 -</span>  Review & Submit </h3>
                        <p class="text-center event_review_text">
                            Review your event before submitting <label class="view_event_btn"> REVIEW</label>
                        </p>

                    </div>
                </div>-->
                <!-- ends -->

                <!-- top heading and buttons -->
                <div class="row add_event_bottom_section">
                    <div class="col-sm-6 col-xs-12 add_event_bottom_section_heading">
                        <h3 class="home_section_heading"><span>Great</span> Almost Done!</h3>
                    </div>
                    <div class="col-sm-6 col-xs-12 add_event_bottom_section_buttons">
                        <button class="view_event_btn" id="event_final_save_btn">UPDATE</button>
                        <!--<button class="add_event_btn" id="event_final_update_btn">UPDATE LIVE</button>-->
                    </div>

                </div>
                <!-- ends -->
            </form>
        </div>
        <!-- add story form outer ends -->

        <!-- footer -->
        @include('footer')
        <!-- Initialize Swiper -->
    </body>
</html>