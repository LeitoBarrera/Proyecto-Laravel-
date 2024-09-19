<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Deducción de Seguridad Social</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Crear Deducción de Seguridad Social</h1>

    @if(session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

    <form action="{{ route('seguridad_social.store') }}" method="POST">
        @csrf
        <label for="descp_deduccion">Descripción de la Deducción:</label>
        <input type="text" id="descp_deduccion" name="descp_deduccion" required>
        <br>
        <label for="nro_documento">Número de Documento:</label>
        <input type="text" id="nro_documento" name="nro_documento" required>
        <br>
        <button type="submit">Guardar Deducción</button>
    </form>
</body>
</html>
