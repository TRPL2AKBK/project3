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
        Schema::table('verifikasi_soal', function (Blueprint $table) {
            $table->foreign(['id_pengurus'], 'fk_vsoal_pengurus')->references(['id'])->on('ref_pengurus_kbk')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign(['id_soal'], 'fk_vsoal_soal')->references(['id'])->on('ref_soal')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign(['id_tahun'], 'fk_vsoal_tahun')->references(['id'])->on('tahun_ajaran')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('verifikasi_soal', function (Blueprint $table) {
            $table->dropForeign('fk_vsoal_pengurus');
            $table->dropForeign('fk_vsoal_soal');
            $table->dropForeign('fk_vsoal_tahun');
        });
    }
};
