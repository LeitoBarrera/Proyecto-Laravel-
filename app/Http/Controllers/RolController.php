<?php

namespace App\Http\Controllers;

use App\Models\Role; // Importar el modelo Role
use Illuminate\Http\Request;

class RolController extends Controller
{
    // Método para mostrar el formulario de creación
    public function create()
    {
        return view('roles.create');
    }

    // Método para guardar el rol
    public function store(Request $request)
    {
        $request->validate([
            'descp_rol' => 'required|string|max:255',
            'permisos' => 'required|string|max:255',
        ]);

        Role::create([
            'descp_rol' => $request->descp_rol,
            'permisos' => $request->permisos,
        ]);

        return redirect()->route('roles.create')->with('success', 'Rol creado exitosamente');
    }

    // Método para listar los roles
    public function index()
    {
        $roles = Role::all(); // Obtener todos los roles de la base de datos
        return view('roles.index', compact('roles')); // Pasar los roles a la vista
    }
}
