<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddNarratorToEventStories extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::table('event_stories', function($table) {
            $table->string('narrator_name')->after('image');
            $table->string('narrator_image')->after('narrator_name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::table('event_stories', function($table) {
            $table->dropColumn('narrator_name');
            $table->dropColumn('narrator_image');
        });
    }

}
