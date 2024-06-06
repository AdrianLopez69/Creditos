<%--
  Created by IntelliJ IDEA.
  User: MyHP
  Date: 6/6/2024
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitud de Crédito</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fb;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            font-size: 1.5em;
            margin-bottom: 1em;
            color: #007bff;
            text-align: center;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<form action="CreditoServlet" method="post">
    <h1>Solicitud de Crédito</h1>
    <label for="monto">Monto del Crédito:</label>
    <input type="number" name="monto" id="monto">

    <label for="plazo">Plazo:</label>
    <select name="plazo" id="plazo">
        <option value="12">12 meses</option>
        <option value="24">24 meses</option>
        <option value="36">36 meses</option>
        <option value="60">60 meses</option>
    </select>

    <input type="submit" value="Calcular">
</form>
</body>
</html>

