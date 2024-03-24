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
        Schema::create('ref_dosen_matakuliah', function (Blueprint $table) {
            $table->integer('id_dosen_matakuliah', true);
            $table->integer('id_dosen');
            $table->integer('id_matakuliah');
            $table->integer('id_kelas');
            $table->integer('id_smt_thn_akd');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_dosen_matakuliah');
    }
};
