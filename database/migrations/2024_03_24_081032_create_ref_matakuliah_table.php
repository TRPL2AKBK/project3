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
        Schema::create('ref_matakuliah', function (Blueprint $table) {
            $table->integer('id_matakuliah', true);
            $table->string('kode_matakuliah', 10)->nullable();
            $table->string('nama_matakuliah', 50)->nullable();
            $table->enum('TP', ['T', 'P', 'T/P'])->comment('Bentuk perkuliahan');
            $table->integer('sks')->nullable();
            $table->integer('jam');
            $table->integer('sks_teori');
            $table->integer('sks_praktek');
            $table->integer('jam_teori');
            $table->integer('jam_praktek');
            $table->integer('semester')->nullable();
            $table->integer('id_kurikulum')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_matakuliah');
    }
};
