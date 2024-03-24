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
        Schema::create('ref_kurikulum', function (Blueprint $table) {
            $table->integer('id_kurikulum', true);
            $table->string('kode_kurikulum', 20);
            $table->string('nama_kurikulum', 50);
            $table->integer('tahun');
            $table->integer('id_prodi');
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
        Schema::dropIfExists('ref_kurikulum');
    }
};
