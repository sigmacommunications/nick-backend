<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('place_trips', function (Blueprint $table) {
            $table->id();
			$table->unsignedBigInteger('trip_id');
			$table->unsignedBigInteger('place_id');
            $table->timestamps();
			$table->foreign('trip_id')->references('id')->on('trips')->onDelete('cascade');
			$table->foreign('place_id')->references('id')->on('places')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('place_trips');
    }
};
