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
        Schema::table('matkul', function (Blueprint $table) {
            $table->foreign(['id_dosen'], 'fk_matkul_dosen')->references(['id'])->on('dosen')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign(['id_bidang'], 'matkul_ibfk_1')->references(['id'])->on('bidang_keahlian')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('matkul', function (Blueprint $table) {
            $table->dropForeign('fk_matkul_dosen');
            $table->dropForeign('matkul_ibfk_1');
        });
    }
};
