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
        Schema::create('ref_jabatan_pimpinan', function (Blueprint $table) {
            $table->integer('id_jabatan_pimpinan')->primary();
            $table->string('jabatan_pimpinan', 20);
            $table->string('kode_jabatan_pimpinan', 10);
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
        Schema::dropIfExists('ref_jabatan_pimpinan');
    }
};
