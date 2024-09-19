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
        Schema::create('vinculaciones', function (Blueprint $table) {
            $table->id('id_vinculacion');
            $table->string('nro_documento');
            $table->unsignedBigInteger('id_cargo');
            $table->date('fecha_vinculacion');
            $table->unsignedBigInteger('id_tipo_vinculacion');
            $table->unsignedBigInteger('id_empleado');
            $table->timestamps();

            $table->foreign('id_cargo')->references('id_cargo')->on('cargos');
            $table->foreign('id_tipo_vinculacion')->references('id_tipo_vinculacion')->on('tipo_vinculaciones');
            $table->foreign('id_empleado')->references('id_empleado')->on('empleados');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('vinculaciones');
    }
};
