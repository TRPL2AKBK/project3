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
        Schema::table('dosen', function (Blueprint $table) {
            $table->foreign(['id_bidang'], 'fk_dosen_bidang')->references(['id'])->on('bidang_keahlian')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign(['id_prodi'], 'fk_dosen_prodi')->references(['id'])->on('prodi')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dosen', function (Blueprint $table) {
            $table->dropForeign('fk_dosen_bidang');
            $table->dropForeign('fk_dosen_prodi');
        });
    }
};
