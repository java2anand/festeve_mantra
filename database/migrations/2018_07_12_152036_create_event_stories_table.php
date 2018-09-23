<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventStoriesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('event_stories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_id');
            $table->string('story_name');
            $table->string('slug');
            $table->text('short_desc');
            $table->text('description');
            $table->string('image');
            $table->string('narrator_name');
            $table->string('narrator_image');
            $table->tinyInteger('status');
            $table->string('facebook_id');
            $table->string('twitter_id');
            $table->string('linked_id');
            $table->string('instagram_id');
            $table->string('googleplus_id');
            $table->integer('sort_order');
            $table->text('meta_keyword');
            $table->text('meta_description');
            $table->text('page_title');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('event_stories');
    }

}
