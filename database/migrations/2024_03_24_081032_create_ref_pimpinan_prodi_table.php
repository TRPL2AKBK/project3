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
        Schema::create('ref_pimpinan_prodi', function (Blueprint $table) {
            $table->integer('id_pimpinan_prodi', true);
            $table->integer('id_jabatan_pimpinan');
            $table->integer('id_prodi');
            $table->integer('id_dosen');
            $table->string('periode', 10);
            $table->enum('status', ['0', '1']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_pimpinan_prodi');
    }
};
