<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Deducciones extends Model
{
    // Especifica la tabla si no sigue la convención de Laravel
    protected $table = 'deducciones';

    // La clave primaria es 'id_deduccion'
    protected $primaryKey = 'id_deduccion';

    // Permitir la asignación masiva de estos campos
    protected $fillable = ['descrip_deduccion', 'nro_documento', 'porcentaje_deduccion'];
}
