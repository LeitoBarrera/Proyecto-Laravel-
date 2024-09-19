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
        Schema::create('empresas', function (Blueprint $table) {
            $table->string('nit')->primary();
            $table->unsignedBigInteger('id_empleado');
            $table->string('razon_social');
            $table->string('correo')->unique();
            $table->string('estado_sistema');
            $table->timestamps();

            $table->foreign('id_empleado')->references('id_empleado')->on('empleados');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('empresas');
    }
};
