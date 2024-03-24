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
        Schema::create('ref_dosen', function (Blueprint $table) {
            $table->integer('id_dosen', true);
            $table->string('nama', 100);
            $table->string('nidn', 100)->unique('nidn');
            $table->string('nip', 100);
            $table->string('gender', 30);
            $table->integer('id_jurusan');
            $table->integer('id_prodi');
            $table->string('email', 50);
            $table->string('image', 100)->nullable();
            $table->enum('status', ['0', '1'])->default('1');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_dosen');
    }
};
