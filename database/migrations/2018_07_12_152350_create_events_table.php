<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('events', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('slug');
            $table->integer('event_category');
            $table->integer('event_type');
            $table->text('short_description');
            $table->text('description');
            $table->date('start_date');
            $table->date('end_date');
            $table->time('start_time');
            $table->time('end_time');
            $table->string('event_image');
            $table->string('event_location');
            $table->text('event_address');
            $table->integer('city');
            $table->integer('state');
            $table->integer('country');
            $table->string('event_document');
            $table->string('ticket_url');
            $table->string('website_url');
            $table->string('facebook_id');
            $table->string('twitter_id');
            $table->string('linked_id');
            $table->string('instagram_id');
            $table->string('googleplus_id');
            $table->tinyInteger('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('events');
    }

}
