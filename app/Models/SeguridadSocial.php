<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SeguridadSocial extends Model
{
    // Especifica la tabla si no sigue la convención de Laravel
    protected $table = 'seguridad_socials';

    // La clave primaria es 'id_seguridad_social'
    protected $primaryKey = 'id_seguridad_social';

    // Permitir la asignación masiva de estos campos
    protected $fillable = ['descp_deduccion', 'nro_documento'];
}
