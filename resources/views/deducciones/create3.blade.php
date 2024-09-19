<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Deducción</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Crear Deducción</h1>

    @if(session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

    <form action="{{ route('deducciones.store') }}" method="POST">
        @csrf
        <label for="descrip_deduccion">Descripción de la Deducción:</label>
        <input type="text" id="descrip_deduccion" name="descrip_deduccion" required>
        <br>
        <label for="nro_documento">Número de Documento:</label>
        <input type="text" id="nro_documento" name="nro_documento" required>
        <br>
        <label for="porcentaje_deduccion">Porcentaje de Deducción (%):</label>
        <input type="number" id="porcentaje_deduccion" name="porcentaje_deduccion" step="0.01" min="0" max="100" required>
        <br>
        <button type="submit">Guardar Deducción</button>
    </form>
</body>
</html>
