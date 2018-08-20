<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSiteSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('site_settings', function (Blueprint $table) {
            $table->increments('id');
			$table->string('company_title');
			$table->string('logo');
			$table->string('address');
			$table->bigInteger('phone_number');
			$table->bigInteger('mobile_number');
			$table->string('contact_email');
			$table->string('facebook_id');
			$table->string('twitter_id');
			$table->string('linked_id');
			$table->string('instagram_id');
			$table->string('googleplus_id');
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
        Schema::dropIfExists('site_settings');
    }
}
