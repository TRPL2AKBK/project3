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
        Schema::create('ref_prodi', function (Blueprint $table) {
            $table->integer('id_prodi', true);
            $table->string('kode_prodi', 10);
            $table->string('prodi', 500);
            $table->integer('id_jurusan')->index('id_jurusan');
            $table->string('id_jenjang', 11)->index('jenjang_fk');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_prodi');
    }
};
