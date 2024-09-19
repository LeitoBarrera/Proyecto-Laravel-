<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Rol</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Crear Rol</h1>

    @if(session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

    <form action="{{ route('roles.store') }}" method="POST">
        @csrf
        <label for="descp_rol">Descripción del Rol:</label>
        <input type="text" id="descp_rol" name="descp_rol" required>
        <br>
        <label for="permisos">Permisos:</label>
        <input type="text" id="permisos" name="permisos" required>
        <br>
        <button type="submit">Guardar Rol</button>
    </form>
</body>
</html>
