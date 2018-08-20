<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventCategoriesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('event_categories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('parent_id');
            $table->string('category_name');
            $table->string('slug');
            $table->text('description');
            $table->string('icon');
            $table->string('thumbnail');
            $table->string('top_banner');
            $table->string('right_banner');
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
        Schema::dropIfExists('event_categories');
    }

}
