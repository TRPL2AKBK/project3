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
        Schema::create('ref_kelas', function (Blueprint $table) {
            $table->integer('id_kelas', true);
            $table->string('kode_kelas', 10);
            $table->string('nama_kelas', 20);
            $table->integer('id_prodi');
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
        Schema::dropIfExists('ref_kelas');
    }
};
