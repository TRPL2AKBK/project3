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
        Schema::create('dosen', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name', 100);
            $table->string('nidn', 100);
            $table->string('nip', 100);
            $table->string('gender', 30);
            $table->integer('id_prodi')->index('fk_dosen_prodi');
            $table->integer('id_bidang')->index('fk_dosen_bidang');
            $table->string('email', 100);
            $table->string('image', 100)->nullable();
            $table->integer('status')->nullable()->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dosen');
    }
};
