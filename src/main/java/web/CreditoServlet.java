package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/CreditoServlet")
public class CreditoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        Cliente cliente = (Cliente) session.getAttribute("cliente");

        if (cliente == null || !cliente.isSolicitud()) {
            resp.sendRedirect("index.html");
            return;
        }

        double monto = Double.parseDouble(req.getParameter("monto"));
        int plazo = Integer.parseInt(req.getParameter("plazo"));
        double tasaInteres = 0;

        if(plazo==12){
            tasaInteres=0.25;
        }else if(plazo==24){
            tasaInteres=0.45;
        }else if(plazo==36){
            tasaInteres=0.60;
        }else if(plazo==60){
            tasaInteres=0.75;
        }

        Credito credito = new Credito();
        credito.setMonto(monto);
        credito.setPlazo(plazo);
        credito.setTasaInteres(tasaInteres);
        credito.calcularPagoMensual();
        session.setAttribute("credito", credito);
        resp.sendRedirect("Resultado.jsp");


    }
}
