<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Deducciones de Seguridad Social</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Lista de Deducciones de Seguridad Social</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Descripción de la Deducción</th>
                <th>Número de Documento</th>
            </tr>
        </thead>
        <tbody>
            @foreach($deducciones as $deduccion)
                <tr>
                    <td>{{ $deduccion->id_seguridad_social }}</td>
                    <td>{{ $deduccion->descp_deduccion }}</td>
                    <td>{{ $deduccion->nro_documento }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
