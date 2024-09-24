<?php

namespace App\Models;
use App\Models\TipoNivelRiesgo;


use Illuminate\Database\Eloquent\Model;

class TipoNivelRiesgo extends Model
{
    protected $table = 'tipo_nivel_riesgos';
    protected $primaryKey = 'id_tipo_nivel_riesgo';
    protected $fillable = ['descp_tipo_nivel_riesgo', 'porcentaje_desc'];
}
