<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Deducciones extends Model
{
    protected $table = 'deducciones';
    protected $primaryKey = 'id_deduccion';
    public $timestamps = true;

    protected $fillable = [
        'descrip_deduccion',
        'nro_documento',
        'porcentaje_deduccion',
    ];
}
