<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->increments('id');
            $table->enum('type', ['emp', 'owner']);
            $table->string('name');
            $table->string('image');
            $table->string('designation');
            $table->string('facebook_id');
            $table->string('twitter_id');
            $table->string('linkedin_id');
            $table->string('instagram_id');
            $table->string('googleplus_id');
            $table->text('about');
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
        Schema::dropIfExists('employees');
    }
}
