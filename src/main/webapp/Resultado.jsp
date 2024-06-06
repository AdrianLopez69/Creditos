<%@ page import="web.Cliente" %>
<%@ page import="web.Credito" %><%--
  Created by IntelliJ IDEA.
  User: MyHP
  Date: 6/6/2024
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado Del Crédito</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }
        .highlight {
            color: #007bff;
            font-weight: bold;
        }
        .button-container {
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
        }
        input[type="reset"],
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        input[type="reset"]:hover,
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Resultado del Crédito</h1>
    <%
        Cliente cliente= (Cliente)session.getAttribute("cliente");
        Credito credito=(Credito)session.getAttribute("credito");

        if ( credito != null && cliente != null){
    %>
    <p>Cliente: <span class="highlight"><%= cliente.getNombre() %></span></p>
    <p>Sexo: <span class="highlight"><%= cliente.getSexo() %></span></p>
    <p>Edad: <span class="highlight"><%= cliente.getEdad() %></span></p>
    <p>Sueldo Mensual: <span class="highlight">$<%= cliente.getSueldoMensual() %></span></p>
    <p>Monto del Crédito: <span class="highlight">$<%= credito.getMonto() %></span></p>
    <p>Plazo: <span class="highlight"><%= credito.getPlazo() %> meses</span></p>
    <p>Tasa de Interés: <span class="highlight"><%= credito.getTasaInteres() %> %</span></p>
    <p>Total a Pagar: <span class="highlight">$<%= credito.getMonto() + credito.interes() %></span></p>
    <p>Pagos Mensuales: <span class="highlight">$<%= credito.getPagoMensual() %></span></p>
    <div class="button-container">
        <form action="index.html">
            <input type="submit" typeof="reset" value="Realizar otra solicitud">
        </form>
        <input type="submit" value="Salir">
    </div>
    <%
        }else{
            response.sendRedirect("index.html");
        }
    %>
</div>
</body>
</html>