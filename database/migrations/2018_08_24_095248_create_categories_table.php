<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('parent_id');
            $table->string('category_name');
            $table->string('category_title');
            $table->string('slug');
            $table->text('description');
            $table->string('mini_icon');
            $table->string('popular_icon');
            $table->string('image');
            $table->string('event_image');
            $table->string('top_banner');
            $table->string('right_banner');
            $table->integer('sort_order');
            $table->text('meta_keyword');
            $table->text('meta_description');
            $table->text('page_title');
            $table->tinyInteger('status');
            $table->tinyInteger('popular')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
