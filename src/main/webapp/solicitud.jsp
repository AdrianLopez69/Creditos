<%--
  Created by IntelliJ IDEA.
  User: MyHP
  Date: 6/6/2024
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitud de Cliente</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 2em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h1 {
            font-size: 1.5em;
            margin-bottom: 1em;
            color: #007bff;
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 0.5em;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
            padding: 0.5em;
            margin-bottom: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(100% - 1em);
        }
        input[type="submit"] {
            padding: 0.5em;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Solicitud de Cliente</h1>
    <form action="SolicitudServlet" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" id="nombre">

        <label for="sexo">Sexo:</label>
        <input type="text" name="sexo" id="sexo">

        <label for="edad">Edad:</label>
        <input type="number" name="edad" id="edad">

        <label for="sueldo">Sueldo Mensual:</label>
        <input type="number" name="SueldoMensual" id="sueldo">

        <input type="submit" value="Enviar">
    </form>
</div>
</body>
</html>
