<?php

use App\Http\Controllers\DeduccionesController;
use App\Http\Controllers\SeguridadSocialController;
use App\Http\Controllers\TipoNivelRiesgoController;
use App\Http\Controllers\RolController;
use Illuminate\Support\Facades\Route;

// Ruta principal que carga la vista welcome
Route::get('/', function () {
    return view('welcome'); // Carga la vista welcome
});

// Rutas para la gestión de roles
Route::get('/roles/create', [RolController::class, 'create'])->name('roles.create');
Route::post('/roles', [RolController::class, 'store'])->name('roles.store');
Route::get('/roles', [RolController::class, 'index'])->name('roles.index'); // Nueva ruta para mostrar los roles

// Rutas para la gestión de tipo de nivel de riesgo
Route::get('/tipo_nivel_riesgo/create', [TipoNivelRiesgoController::class, 'create'])->name('tipo_nivel_riesgo.create');
Route::post('/tipo_nivel_riesgo', [TipoNivelRiesgoController::class, 'store'])->name('tipo_nivel_riesgo.store');
Route::get('/tipo_nivel_riesgo', [TipoNivelRiesgoController::class, 'index'])->name('tipo_nivel_riesgo.index');

// Rutas para la gestión de seguridad social
Route::get('/seguridad_social/create', [SeguridadSocialController::class, 'create'])->name('seguridad_social.create');
Route::post('/seguridad_social', [SeguridadSocialController::class, 'store'])->name('seguridad_social.store');
Route::get('/seguridad_social', [SeguridadSocialController::class, 'index'])->name('seguridad_social.index');

// Rutas para la gestión de deducciones
Route::get('/deducciones/create', [DeduccionesController::class, 'create'])->name('deducciones.create');
Route::post('/deducciones', [DeduccionesController::class, 'store'])->name('deducciones.store');
Route::get('/deducciones', [DeduccionesController::class, 'index'])->name('deducciones.index');
