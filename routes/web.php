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
Auth::routes();
Route::post('/user/logout', 'Auth\LoginController@userLogout')->name('user.logout');

Route::get('/', 'HomeController@index')->name('home');
Route::get('/about-us', 'HomeController@about_us')->name('about');
Route::get('/categories', 'HomeController@categories')->name('categories');
Route::get('/event-category/{event_slug}', 'HomeController@event_list')->name('event-category');
Route::get('/event-detail/{event_slug}', 'HomeController@event_detail')->name('event-detail');
Route::get('/top-100', 'HomeController@top_hundred')->name('top-100');
Route::get('/add-event', 'HomeController@add_event')->name('add-event');
Route::get('/search/{keyword?}', 'HomeController@search')->name('search');
Route::post('/save_newsleter', 'HomeController@save_newsleter')->name('save_newsleter');

/* * ***********Admin Panel ******************* */
Route::prefix('admin')->group(function() {
    /*     * *** dashboard + profile + newsletter + sitesetting routes *********** */
    Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
    Route::get('/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

    Route::get('/home', 'Admin\AdminController@index')->name('admin.home');
    Route::any('/profile', 'Admin\AdminController@profile')->name('admin.profile');
    Route::any('/site_setting/{id?}', 'Admin\AdminController@site_setting')->name('admin.sitesetting');

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
    Route::get('/event_add/{id?}', 'Admin\EventController@create')->name('admin.event_add');
    Route::post('/event_store/{id?}', 'Admin\EventController@save_event')->name('admin.event_store');
    Route::any('/event_add_schedule/{id?}', 'Admin\EventController@save_schedule')->name('admin.event_add_schedule');
    Route::any('/event_add_address/{id?}', 'Admin\EventController@save_address')->name('admin.event_add_address');
    Route::any('/event_add_social/{id?}', 'Admin\EventController@save_social')->name('admin.event_add_social');
    Route::any('/event_add_seo/{id?}', 'Admin\EventController@save_seo')->name('admin.event_add_seo');

    Route::post('/delete_event_schedule', 'Admin\EventController@delete_schedule')->name('admin.delete_event_schedule');
    Route::get('/event_delete/{id}', 'Admin\EventController@destroy')->name('admin.event_delete');

    Route::get('/event_top_hundred', 'Admin\EventController@event_top_hundred')->name('admin.event_top_hundred');
    Route::post('/sortevent', 'Admin\EventController@update_order')->name('admin.sortevent');

    /*     * ********speaker routes ******************* */
    Route::get('/speaker_list', 'Admin\SpeakerController@index')->name('admin.speaker_list');
    Route::get('/speaker_add/{id?}', 'Admin\SpeakerController@create')->name('admin.speaker_add');
    Route::post('/speaker_store/{id?}', 'Admin\SpeakerController@save_speaker')->name('admin.speaker_store');
    Route::get('/speaker_delete/{id}', 'Admin\SpeakerController@destroy')->name('admin.speaker_delete');

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
});
