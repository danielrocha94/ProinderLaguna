package controller;

import dataAccess.ConnectionDB;
import dataAccess.RecollectorDAO;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Recollector;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
 

@WebServlet(urlPatterns = {"/map"})
public class mapServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "inicio";
        }
        if (action.equals("inicio")) {

        } else if (action.equals("getRecollectorsData")) {
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();
            RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
            ArrayList<Recollector> recollectors = recollectorDAO.getRecollectorData();
            
            String json = new Gson().toJson(recollectors);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);

        } else if (action.equals("getUserData")) {
            
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
