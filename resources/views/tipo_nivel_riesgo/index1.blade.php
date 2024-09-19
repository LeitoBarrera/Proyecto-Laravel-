<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Niveles de Riesgo</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Lista de Niveles de Riesgo</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Descripción</th>
                <th>Porcentaje de Descuento</th>
            </tr>
        </thead>
        <tbody>
            @foreach($riesgos as $riesgo)
                <tr>
                    <td>{{ $riesgo->id_tipo_nivel_riesgo }}</td>
                    <td>{{ $riesgo->descp_tipo_nivel_riesgo }}</td>
                    <td>{{ $riesgo->porcentaje_desc }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
