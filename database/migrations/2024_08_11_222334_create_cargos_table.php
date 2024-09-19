<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('cargos', function (Blueprint $table) {
            $table->id('id_cargo');
            $table->string('nombre_cargo');
            $table->unsignedBigInteger('id_nivel_riesgo');
            $table->timestamps();

            $table->foreign('id_nivel_riesgo')
                  ->references('id_nivel_riesgo')
                  ->on('nivel_riesgos')
                  ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::dropIfExists('cargos');
    }
};
