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
        Schema::table('verifikasi_rps', function (Blueprint $table) {
            $table->foreign(['id_pengurus'], 'fk_vrps_pengurus')->references(['id'])->on('pengurus_kbk')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign(['id_rps'], 'fk_vrps_rps')->references(['id'])->on('rps')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign(['id_tahun'], 'fk_vrps_tahun')->references(['id'])->on('tahun_ajaran')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('verifikasi_rps', function (Blueprint $table) {
            $table->dropForeign('fk_vrps_pengurus');
            $table->dropForeign('fk_vrps_rps');
            $table->dropForeign('fk_vrps_tahun');
        });
    }
};
