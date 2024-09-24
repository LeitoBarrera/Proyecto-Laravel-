<!-- resources/views/welcome.blade.php -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido - Aplicación</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}"> <!-- Asegúrate de tener tus estilos -->
</head>
<body>
    @include('layouts.app') <!-- Incluye el layout app.blade.php -->

    <div class="container">
        <h1>¡Bienvenido a la Aplicación!</h1>
        <p>Selecciona una opción del menú para comenzar a gestionar:</p>

        <div class="card">
            <div class="card-body">
                <h2>Opciones de Gestión</h2>
                <ul>
                    <li><a href="{{ route('roles.index') }}">Ver Roles</a></li>
                    <li><a href="{{ route('roles.create') }}">Crear Rol</a></li>
                    <li><a href="{{ route('tipo_nivel_riesgo.index') }}">Ver Tipo de Nivel de Riesgo</a></li>
                    <li><a href="{{ route('tipo_nivel_riesgo.create') }}">Crear Tipo de Nivel de Riesgo</a></li>
                    <li><a href="{{ route('seguridad_social.index') }}">Ver Seguridad Social</a></li>
                    <li><a href="{{ route('seguridad_social.create') }}">Crear Seguridad Social</a></li>
                    <li><a href="{{ route('deducciones.index') }}">Ver Deducciones</a></li>
                    <li><a href="{{ route('deducciones.create') }}">Crear Deducción</a></li>
                </ul>
            </div>
        </div>
    </div>

    <script src="{{ asset('js/app.js') }}"></script> <!-- Asegúrate de tener tus scripts -->
</body>
</html>
