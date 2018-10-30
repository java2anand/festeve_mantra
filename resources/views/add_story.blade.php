<!DOCTYPE html>
<html lang="en">
    @include('head')
    <body class="about_page_outer static_pages add_story_page">
        <!-- header -->
        <div class="moblie_header_overlay"></div>
        @include('header')
        <!-- header ends -->
        <div class="container-fluid static_top_banner team_top_banner">
            <div class="row">
                <div  class="col-xs-12 text-center">
                    <h1>SUBMIT YOUR STORY</h1>
                    <p class="team_subheading">Music, Conference, Parties and all</p>
                </div>
            </div>
        </div>

        <!-- add story form outer -->
        <div class="container add_story_form">
            <div class="row">
                <div class="col-xs-12">
                    <h3>We already know how magnificent you are…<br>
                        But now we want you to share your<br>
                        magnificence with the world!
                    </h3>
                    <form>
                        <div class="form-group">
                            <label>How would you like your name to appear on our site?</label>
                            <input type="text" class="form-control" id="exampleInputEmail1">
                            <span class="input-helper">0 of 50 max characters</span>
                        </div>
                        <div class="form-group">
                            <label>Where are you from?</label>
                            <input type="text" class="form-control">
                            <span class="input-helper">0 of 60 max characters</span>
                        </div>
                        <div class="form-group">
                            <label>Tell us a little about yourself</label>
                            <input type="text" class="form-control">
                            <span class="input-helper">0 of 60 max characters</span>
                        </div>

                        <h4>YOUR STORY</h4>
                        <div class="form-group">
                            <label>What's the story title?</label>
                            <input type="text" class="form-control">
                            <span class="input-helper">0 of 60 max characters</span>
                        </div>
                        <div class="form-group">
                            <label>Your Story*</label>
                            <textarea class="form-control"></textarea>
                            <span class="input-helper">0 of 60 max characters</span>
                        </div>

                        <!-- cat section -->
                        <p class="add_stroy_cat_label">The central theme of my story relates to...</p>
                        <div class="radio add_stroy_categories">

                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                            <label for="optionsRadios1">
                                Music
                            </label>

                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option1" >
                            <label for="optionsRadios2">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option1" >
                            <label for="optionsRadios3">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios4" value="option1" >
                            <label for="optionsRadios4">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios5" value="option1" >
                            <label for="optionsRadios5">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios6" value="option1" >
                            <label for="optionsRadios6">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios7" value="option1" >
                            <label for="optionsRadios7">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios8" value="option1" >
                            <label for="optionsRadios8">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios9" value="option1" >
                            <label for="optionsRadios9">
                                Music
                            </label>
                            <input type="radio" name="optionsRadios" id="optionsRadios10" value="option1" >
                            <label for="optionsRadios10">
                                Music
                            </label>
                        </div>

                        <!-- ends -->

                        <!-- contact info -->
                        <h4>CONTACT INFORMATION</h4>
                        <div class="form-group fg_50 fpaddingright">
                            <label>Your First Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group fg_50 fpaddingleft">
                            <label>Your Last Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group fg_50 fpaddingright">
                            <label>Your email address</label>
                            <input type="email" class="form-control" >
                        </div>
                        <div class="form-group fg_50 fpaddingleft">
                            <label>Your postal/zip code</label>
                            <input type="text" class="form-control" >
                        </div>

                        <div class="form-group text-center button_section">
                            <p>Want thousands of event goes to read about your cherishable event story?</p>
                            <button type="submit">SUBMIT</button>
                        </div>


                        <!-- contact info ends -->
                    </form>
                </div>
            </div>
        </div>

        <!-- add story form outer ends -->

        <!-- footer -->
        @include('footer')
    </body>
</html>