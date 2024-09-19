<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoNivelRiesgo extends Model
{
    // Especifica la tabla si no sigue la convención de Laravel
    protected $table = 'tipo_nivel_riesgos';

    // La clave primaria es 'id_tipo_nivel_riesgo'
    protected $primaryKey = 'id_tipo_nivel_riesgo';

    // Permitir la asignación en masa de estos campos
    protected $fillable = ['descp_tipo_nivel_riesgo', 'porcentaje_desc'];
}
