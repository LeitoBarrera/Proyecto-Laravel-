<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Nivel de Riesgo</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Crear Nivel de Riesgo</h1>

    @if(session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

    <form action="{{ route('tipo_nivel_riesgo.store') }}" method="POST">
        @csrf
        <label for="descp_tipo_nivel_riesgo">Descripción del Nivel de Riesgo:</label>
        <input type="text" id="descp_tipo_nivel_riesgo" name="descp_tipo_nivel_riesgo" required>
        <br>
        <label for="porcentaje_desc">Porcentaje de Descuento:</label>
        <input type="text" id="porcentaje_desc" name="porcentaje_desc" required>
        <br>
        <button type="submit">Guardar Nivel de Riesgo</button>
    </form>
</body>
</html>
