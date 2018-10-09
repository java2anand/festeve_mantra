<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventSchedulesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('event_schedules', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('event_id');
            $table->string('title');
            $table->text('address');
            $table->date('date');
            $table->time('from_time');
            $table->time('to_time');
            $table->string('activity_name');
            $table->text('activity');
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
        Schema::dropIfExists('event_schedules');
    }

}
