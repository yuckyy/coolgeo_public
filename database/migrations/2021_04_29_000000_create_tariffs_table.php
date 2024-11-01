<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTariffsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tariffs', function (Blueprint $table) {
            $table->id();
            $table->string('address');
            $table->string('floats');
            $table->string('calories');
            $table->string('money')->nullable();
            $table->string('service')->nullable();
            $table->string('reward');
            $table->string('settlement');

            $table->string('floats2')->nullable();
            $table->string('calories2')->nullable();
            $table->string('money2')->nullable();
            $table->string('service2')->nullable();
            $table->string('reward2')->nullable();
            $table->string('settlement2')->nullable();

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('published_at')->useCurrent()->nullable();
            $table->timestamp('closed_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tariffs');
    }
}
