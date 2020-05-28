<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuerySearchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('query_searches', function (Blueprint $table) {
            $table->id();
            $table->string('query');
            $table->string('video_id');
            $table->string('video_title');
            $table->string('video_description');
            $table->string('video_image');
            $table->string('video_date');
            $table->string('video_channel');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('query_searches');
    }
}
