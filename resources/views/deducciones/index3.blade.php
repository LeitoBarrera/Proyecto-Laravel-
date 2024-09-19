<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Deducciones</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Lista de Deducciones</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Descripción</th>
                <th>Número de Documento</th>
                <th>Porcentaje de Deducción</th>
            </tr>
        </thead>
        <tbody>
            @foreach($deducciones as $deduccion)
                <tr>
                    <td>{{ $deduccion->id_deduccion }}</td>
                    <td>{{ $deduccion->descrip_deduccion }}</td>
                    <td>{{ $deduccion->nro_documento }}</td>
                    <td>{{ $deduccion->porcentaje_deduccion }}%</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
