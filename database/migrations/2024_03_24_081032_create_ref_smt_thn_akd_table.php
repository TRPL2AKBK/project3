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
        Schema::create('ref_smt_thn_akd', function (Blueprint $table) {
            $table->integer('id_smt_thn_akd', true);
            $table->string('smt_thn_akd', 30);
            $table->enum('status', ['1', '0'])->nullable()->default('0');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_smt_thn_akd');
    }
};
