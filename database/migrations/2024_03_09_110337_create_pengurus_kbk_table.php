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
        Schema::create('pengurus_kbk', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name', 50);
            $table->string('jabatan', 30);
            $table->string('email', 100);
            $table->integer('id_bidang')->index('fk_pengurus_bidang');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pengurus_kbk');
    }
};
