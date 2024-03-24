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
        Schema::table('ref_soal', function (Blueprint $table) {
            $table->foreign(['id_matkul'], 'fk_soal_matkul')->references(['id'])->on('matkul')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ref_soal', function (Blueprint $table) {
            $table->dropForeign('fk_soal_matkul');
        });
    }
};
