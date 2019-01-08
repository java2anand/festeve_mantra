<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStoriesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('stories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_id');
            $table->integer('author_id');
            $table->string('story_name');
            $table->string('slug');
            $table->text('description');
            $table->string('image');
            $table->tinyInteger('status');
            $table->integer('sort_order');
            $table->text('meta_keyword');
            $table->text('meta_description');
            $table->text('page_title');
            $table->tinyInteger('home_story')->default(0);
            $table->enum('added_by', ['A','U'])->default('A')->comment('A=>Admin,U=>User');
            $table->integer('added_by_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('stories');
    }

}
