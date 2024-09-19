<?php

namespace App\Http\Controllers;

use App\Models\Deducciones;
use Illuminate\Http\Request;

class DeduccionesController extends Controller
{
    // Mostrar el formulario de creación
    public function create()
    {
        return view('deducciones.create3');
    }

    // Guardar nueva deducción en la base de datos
    public function store(Request $request)
    {
        $request->validate([
            'descrip_deduccion' => 'required|string|max:255',
            'nro_documento' => 'required|string|max:255',
            'porcentaje_deduccion' => 'required|numeric|between:0,100',
        ]);

        Deducciones::create([
            'descrip_deduccion' => $request->descrip_deduccion,
            'nro_documento' => $request->nro_documento,
            'porcentaje_deduccion' => $request->porcentaje_deduccion,
        ]);

        return redirect()->route('deducciones.create')->with('success', 'Deducción creada exitosamente');
    }

    // Mostrar lista de deducciones
    public function index()
    {
        $deducciones = Deducciones::all();
        return view('deducciones.index3', compact('deducciones'));
    }
}
