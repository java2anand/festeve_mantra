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
            $table->string('slug');
            $table->text('description');
            $table->string('mini_icon');
            $table->string('popular_icon');
            $table->string('image');
            $table->string('top_banner');
            $table->string('right_banner');
            $table->integer('sort_order');
            $table->text('meta_title');
            $table->text('meta_keyword');
            $table->text('meta_description');
            $table->text('page_title');
            $table->text('page_description');
            $table->tinyInteger('status');
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
