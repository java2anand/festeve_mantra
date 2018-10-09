<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('position');
            $table->date('start_date');
            $table->date('end_date');
            $table->string('min_exp');
            $table->string('max_exp');
            $table->string('min_ctc');
            $table->string('max_ctc');
            $table->string('job_type');
            $table->string('job_location');
            $table->integer('total_opening');
            $table->text('requirement');
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
        Schema::dropIfExists('jobs');
    }
}
