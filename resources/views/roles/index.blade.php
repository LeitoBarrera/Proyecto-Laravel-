<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Roles</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Lista de Roles</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Descripción del Rol</th>
                <th>Permisos</th>
            </tr>
        </thead>
        <tbody>
            @foreach($roles as $rol)
                <tr>
                    <td>{{ $rol->id }}</td>
                    <td>{{ $rol->descp_rol }}</td>
                    <td>{{ $rol->permisos }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
