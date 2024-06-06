package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/SolicitudServlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String sexo = request.getParameter("sexo");
        int edad = Integer.parseInt(request.getParameter("edad"));
        double SueldoMensual = Double.parseDouble(request.getParameter("SueldoMensual"));

        if (SueldoMensual <= 700) {
            response.sendRedirect("index.html");
            return;
        }

        Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setSexo(sexo);
        cliente.setEdad(edad);
        cliente.setSueldoMensual(SueldoMensual);
        cliente.setSolicitud(true);

        HttpSession session = request.getSession();
        session.setAttribute("cliente", cliente);

        response.sendRedirect("credito.jsp");


    }
}
