<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrganisersTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('organisers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('organiser_title');
            $table->string('name');
            $table->text('description');
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
        Schema::dropIfExists('organisers');
    }

}
