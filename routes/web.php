<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

/*Route::get('/', function () {
    return view('home');
});
*/
//Auth::routes();
Route::post('/user/logout', 'Auth\LoginController@userLogout')->name('user.logout');

Route::get('/', 'HomeController@index')->name('home');

Route::get('/categories', 'HomeController@categories')->name('categories');
Route::get('/stories', 'HomeController@stories')->name('stories');
Route::get('/story-detail/{story_slug}', 'HomeController@story_detail')->name('story-detail');
Route::get('/event-category/{event_slug}', 'HomeController@event_list')->name('event-category');
Route::get('/event-detail/{event_slug}', 'HomeController@event_detail')->name('event-detail');
Route::get('/top-hundred', 'HomeController@top_hundred')->name('top-hundred');
Route::get('/search/{keyword?}', 'HomeController@search')->name('search');
Route::post('/save_newsleter', 'HomeController@save_newsleter')->name('save_newsleter');
Route::post('/save_enquiry', 'HomeController@save_enquiry')->name('save_enquiry');
Route::any('/fetch_result', 'HomeController@fetch_result')->name('fetch_result');

Route::get('/about-us', 'CommonController@about_us')->name('about-us');
Route::get('/our-team', 'CommonController@our_team')->name('our-team');
Route::get('/careers', 'CommonController@careers')->name('careers');
Route::get('/terms-conditions', 'CommonController@terms_conditions')->name('terms-conditions');
Route::get('/privacy-policy', 'CommonController@privacy_policy')->name('privacy-policy');
Route::get('/contact-us', 'CommonController@contact_us')->name('contact-us');
Route::get('/coming-soon', 'CommonController@coming_soon')->name('coming-soon');

Route::get('/get_reminder', 'UserController@get_reminder')->name('get_reminder');
Route::get('/add-event', 'UserController@add_event')->name('add-event');
Route::get('/add-advertise', 'UserController@add_advertise')->name('add-advertise');
Route::get('/apply-job', 'UserController@apply_job')->name('apply-job');
Route::get('/organizers', 'UserController@organizers')->name('organizers');

/* * ***********Admin Panel ******************* */
Route::prefix('admin')->group(function() {
    /*     * *** dashboard + profile + newsletter + sitesetting routes *********** */
    Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
    Route::get('/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

    Route::get('/home', 'Admin\AdminController@index')->name('admin.home');
    Route::any('/profile', 'Admin\AdminController@profile')->name('admin.profile');
    Route::any('/setting_list', 'Admin\AdminController@setting_list')->name('admin.setting_list');
    Route::any('/site_setting/{id}', 'Admin\AdminController@site_setting')->name('admin.sitesetting');
    Route::any('/pages_list', 'Admin\AdminController@pages_list')->name('admin.pages_list');
    Route::any('/page_setting/{id}', 'Admin\AdminController@page_setting')->name('admin.page_setting');
    Route::any('/advertisement_list', 'Admin\AdminController@advertisement_list')->name('admin.advertisement_list');
    Route::post('/add_advertisement/', 'Admin\AdminController@add_advertisement')->name('admin.add_advertisement');
    Route::post('/advertisement_info/', 'Admin\AdminController@advertisement_info')->name('admin.advertisement_info');
    Route::post('/delete_ad/', 'Admin\AdminController@delete_ad')->name('admin.delete_ad');
    Route::get('/queries_list', 'Admin\AdminController@queries')->name('admin.queries_list');

    //via ajax
    Route::post('/upload_image', 'Admin\AdminController@upload_image')->name('admin.upload_image');
    Route::post('/get_city_list', 'Admin\AdminController@getCityByState')->name('admin.get_city_list');

    /*     * ********category routes ******************* */
    Route::any('/category_list', 'Admin\CategoryController@index')->name('admin.category_list');
    Route::get('/category_add/{id?}', 'Admin\CategoryController@create')->name('admin.category_add');
    Route::post('/category_store/{id?}', 'Admin\CategoryController@save_category')->name('admin.category_store');
    Route::get('/category_delete/{id}', 'Admin\CategoryController@destroy')->name('admin.category_delete');
    Route::get('/category_sorting', 'Admin\CategoryController@category_sorting')->name('admin.category_sorting');
    Route::post('/sortcategory', 'Admin\CategoryController@update_order')->name('admin.sortcategory');

	/*     * ********Story routes ******************* */
    Route::any('/story_list', 'Admin\StoryController@index')->name('admin.story_list');
    Route::get('/story_add/{id?}', 'Admin\StoryController@create')->name('admin.story_add');
    Route::post('/story_store/{id?}', 'Admin\StoryController@save_story')->name('admin.story_store');
    Route::get('/story_delete/{id}', 'Admin\StoryController@destroy')->name('admin.story_delete');

    /*     * ********event type routes ******************* */
    Route::get('/eventtype_list', 'Admin\EventTypeController@index')->name('admin.eventtype_list');
    Route::get('/eventtype_add/{id?}', 'Admin\EventTypeController@create')->name('admin.eventtype_add');
    Route::post('/eventtype_store/{id?}', 'Admin\EventTypeController@save_type')->name('admin.eventtype_store');
    Route::get('/eventtype_delete/{id}', 'Admin\EventTypeController@destroy')->name('admin.eventtype_delete');

    /*     * ********events routes ******************* */
    Route::get('/event_list', 'Admin\EventController@index')->name('admin.event_list');
    Route::get('/premium_event', 'Admin\EventController@premium_event')->name('admin.premium_event');
    Route::get('/home_event', 'Admin\EventController@home_event')->name('admin.home_event');
    Route::get('/event_list', 'Admin\EventController@index')->name('admin.event_list');
    Route::get('/event_add/{id?}', 'Admin\EventController@create')->name('admin.event_add');
    Route::post('/event_store/{id?}', 'Admin\EventController@save_event')->name('admin.event_store');
    Route::any('/event_add_schedule/{id?}', 'Admin\EventController@save_schedule')->name('admin.event_add_schedule');
    Route::any('/event_add_address/{event_id?}/{address_id?}', 'Admin\EventController@save_address')->name('admin.event_add_address');
    Route::any('/event_add_social/{id?}', 'Admin\EventController@save_social')->name('admin.event_add_social');
    Route::any('/event_add_seo/{id?}', 'Admin\EventController@save_seo')->name('admin.event_add_seo');

    Route::post('/delete_event_schedule', 'Admin\EventController@delete_schedule')->name('admin.delete_event_schedule');
    Route::post('/delete_event_address', 'Admin\EventController@delete_address')->name('admin.delete_event_address');
    Route::get('/event_delete/{id}', 'Admin\EventController@destroy')->name('admin.event_delete');

    Route::get('/event_top_hundred', 'Admin\EventController@event_top_hundred')->name('admin.event_top_hundred');
    Route::post('/sortevent', 'Admin\EventController@update_order')->name('admin.sortevent');

    /*     * ********speaker routes ******************* */
    Route::get('/speaker_list', 'Admin\SpeakerController@index')->name('admin.speaker_list');
    Route::get('/speaker_add/{id?}', 'Admin\SpeakerController@create')->name('admin.speaker_add');
    Route::post('/speaker_store/{id?}', 'Admin\SpeakerController@save_speaker')->name('admin.speaker_store');
    Route::get('/speaker_delete/{id}', 'Admin\SpeakerController@destroy')->name('admin.speaker_delete');

    /*     * ********speaker routes ******************* */
    Route::get('/author_list', 'Admin\AuthorController@index')->name('admin.author_list');
    Route::get('/author_add/{id?}', 'Admin\AuthorController@create')->name('admin.author_add');
    Route::post('/author_store/{id?}', 'Admin\AuthorController@save_author')->name('admin.author_store');
    Route::get('/author_delete/{id}', 'Admin\AuthorController@destroy')->name('admin.author_delete');

    /*     * ********organisers routes ******************* */
    Route::get('/organiser_list', 'Admin\OrganiserController@index')->name('admin.organiser_list');
    Route::get('/organiser_add/{id?}', 'Admin\OrganiserController@create')->name('admin.organiser_add');
    Route::post('/organiser_store/{id?}', 'Admin\OrganiserController@save_organiser')->name('admin.organiser_store');
    Route::get('/organiser_delete/{id}', 'Admin\OrganiserController@destroy')->name('admin.organiser_delete');

    /*     * ********newsletter routes ******************* */
    Route::get('/newsletter_list', 'Admin\AdminController@newsletters')->name('admin.newsletter_list');
    Route::get('/newsletter_add/{id?}', 'Admin\AdminController@newsletters_edit')->name('admin.newsletteradd');
    Route::post('/newsletter_store/{id?}', 'Admin\AdminController@save_newsletters')->name('admin.newsletter_store');
    Route::get('/newsletter_delete/{id}', 'Admin\AdminController@destroy_newsletters')->name('admin.newsletter_delete');

    /*     * ********employee routes ******************* */
    Route::get('/employee_list', 'Admin\EmployeeController@index')->name('admin.employee_list');
    Route::get('/employee_add/{id?}', 'Admin\EmployeeController@create')->name('admin.employee_add');
    Route::post('/employee_store/{id?}', 'Admin\EmployeeController@save_employee')->name('admin.employee_store');
    Route::get('/employee_delete/{id}', 'Admin\EmployeeController@destroy')->name('admin.employee_delete');

    /*     * ********jobs routes ******************* */
    Route::get('/job_list', 'Admin\JobController@index')->name('admin.job_list');
    Route::get('/job_add/{id?}', 'Admin\JobController@create')->name('admin.job_add');
    Route::post('/job_store/{id?}', 'Admin\JobController@save_job')->name('admin.job_store');
    Route::get('/job_delete/{id}', 'Admin\JobController@destroy')->name('admin.job_delete');

});
