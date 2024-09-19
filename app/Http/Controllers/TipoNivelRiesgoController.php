<?php

namespace App\Http\Controllers;

use App\Models\TipoNivelRiesgo;
use Illuminate\Http\Request;

class TipoNivelRiesgoController extends Controller
{
    // Método para mostrar el formulario de creación
    public function create()
    {
        return view('tipo_nivel_riesgo.create1');
    }

    // Método para guardar un nuevo nivel de riesgo
    public function store(Request $request)
    {
        $request->validate([
            'descp_tipo_nivel_riesgo' => 'required|string|max:255',
            'porcentaje_desc' => 'required|numeric|between:0,99.99',
        ]);

        TipoNivelRiesgo::create([
            'descp_tipo_nivel_riesgo' => $request->descp_tipo_nivel_riesgo,
            'porcentaje_desc' => $request->porcentaje_desc,
        ]);

        return redirect()->route('tipo_nivel_riesgo.create')->with('success', 'Nivel de riesgo creado exitosamente');
    }

    // Método para listar los niveles de riesgo
    public function index()
    {
        $riesgos = TipoNivelRiesgo::all();
        return view('tipo_nivel_riesgo.index1', compact('riesgos'));
    }
}
