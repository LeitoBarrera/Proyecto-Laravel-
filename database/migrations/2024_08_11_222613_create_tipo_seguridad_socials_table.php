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
        Schema::create('tipo_seguridad_socials', function (Blueprint $table) {
            $table->id('id_tipo_seguridad_social');
            $table->string('descp_tipo_seguridad_social');
            $table->decimal('porcentaje_deduccion', 5, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tipo_seguridad_socials');
    }
};
