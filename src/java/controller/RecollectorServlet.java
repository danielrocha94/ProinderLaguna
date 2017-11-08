package controller;

import dataAccess.ConnectionDB;
import dataAccess.RecollectorDAO;
import java.io.*;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.logging.Logger;
import java.util.logging.Level;
import javax.servlet.annotation.WebServlet;
import javax.swing.JOptionPane;
import model.Recollector;

@WebServlet(urlPatterns = {"/recollector"})
public class RecollectorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.html";
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "inicio";
        }
        if (action.equals("inicio")) {
            url = "/index.html";
        } else if (action.equals("addRecollector")) {
            String id = request.getParameter("id");
            String fullName = request.getParameter("fullName");
            String telephone = request.getParameter("telephone");
            Double latitude = Double.parseDouble(request.getParameter("latitude"));
            Double longitude = Double.parseDouble(request.getParameter("longitude"));
            // store data in Recollector object and save Recollector object in database
            Recollector recollector = new Recollector(id,fullName, telephone,latitude, longitude);
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();

            RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
            recollectorDAO.addRecollector(recollector);

            request.setAttribute("recollector", recollector);
            url = "/RecycleMapApp/index.jsp";
        }

       
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}
