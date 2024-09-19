<?php

namespace App\Http\Controllers;

use App\Models\SeguridadSocial;
use Illuminate\Http\Request;

class SeguridadSocialController extends Controller
{
    // Mostrar el formulario de creación
    public function create()
    {
        return view('seguridad_social.create2');
    }

    // Guardar nueva entrada en la base de datos
    public function store(Request $request)
    {
        $request->validate([
            'descp_deduccion' => 'required|string|max:255',
            'nro_documento' => 'required|string|max:255',
        ]);

        SeguridadSocial::create([
            'descp_deduccion' => $request->descp_deduccion,
            'nro_documento' => $request->nro_documento,
        ]);

        return redirect()->route('seguridad_social.create')->with('success', 'Deducción creada exitosamente');
    }

    // Mostrar lista de deducciones de seguridad social
    public function index()
    {
        $deducciones = SeguridadSocial::all();
        return view('seguridad_social.index2', compact('deducciones'));
    }
}
