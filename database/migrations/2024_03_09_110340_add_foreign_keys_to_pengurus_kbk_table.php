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
        Schema::table('pengurus_kbk', function (Blueprint $table) {
            $table->foreign(['id_bidang'], 'fk_pengurus_bidang')->references(['id'])->on('bidang_keahlian')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pengurus_kbk', function (Blueprint $table) {
            $table->dropForeign('fk_pengurus_bidang');
        });
    }
};
