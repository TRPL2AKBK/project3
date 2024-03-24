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
        Schema::create('verifikasi_rps', function (Blueprint $table) {
            $table->integer('id', true);
            $table->date('tanggal');
            $table->string('keterangan', 30);
            $table->string('dokumen', 100);
            $table->integer('id_pengurus')->index('fk_vrps_pengurus');
            $table->integer('id_rps')->index('fk_vrps_rps');
            $table->integer('id_tahun')->index('fk_vrps_tahun');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('verifikasi_rps');
    }
};
