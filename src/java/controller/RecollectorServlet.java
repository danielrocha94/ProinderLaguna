package controller;

import com.google.gson.Gson;
import dataAccess.ConnectionDB;
import dataAccess.RecollectorDAO;
import dataAccess.UserDAO;
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
import model.User;

@WebServlet(urlPatterns = {"/recollector"})
public class RecollectorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/recollector";
        
        Integer id = Integer.parseInt(request.getParameter("id"));
        String fullName = request.getParameter("fullName");
        String telephone = request.getParameter("telephone");
        Double latitude = Double.parseDouble(request.getParameter("latitude"));
        Double longitude = Double.parseDouble(request.getParameter("longitude"));
        // store data in Recollector object and save Recollector object in database
        Recollector recollector = new Recollector(id, fullName, telephone, latitude, longitude);
        ConnectionDB connectionDB = new ConnectionDB();
        Connection connection = connectionDB.getConnectionDB();
        
        RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
        recollectorDAO.addRecollector(recollector);
        
        response.sendRedirect("http://localhost:8080/RecycleMapApp/recollector");
        
        //request.setAttribute("recollector", recollector);
        
        //request.getRequestDispatcher(url)
        //        .include(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
          ConnectionDB connectionDB = new ConnectionDB();
          Connection connection = connectionDB.getConnectionDB();
          RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
          ArrayList<Recollector> recollectors = recollectorDAO.getRecollectorList();
          request.setAttribute("recollectorList", recollectors);
          String url = "/views/user/admin/recollectors.jsp";
          request.getRequestDispatcher(url)
                .include(request, response);
        } else if (action.equals("selectRecollectorData")) {
          String id = request.getParameter("id");

          ConnectionDB connectionDB = new ConnectionDB();
          Connection connection = connectionDB.getConnectionDB();
          RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
          Recollector recollector = recollectorDAO.getRecollectorById(id);

          String json = new Gson().toJson(recollector);
          response.setContentType("application/json");
          response.setCharacterEncoding("UTF-8");
          response.getWriter().write(json);
        } else if (action.equals("editRecollectorData")) {

          String url = "/recollector";
        
          Integer id = Integer.parseInt(request.getParameter("id"));
          String fullName = request.getParameter("fullName");
          String telephone = request.getParameter("telephone");
          Double latitude = Double.parseDouble(request.getParameter("latitude"));
          Double longitude = Double.parseDouble(request.getParameter("longitude"));

          Recollector recollector = new Recollector(id, fullName, telephone, latitude, longitude);            
            
          ConnectionDB connectionDB = new ConnectionDB();
          Connection connection = connectionDB.getConnectionDB();
          RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
          recollectorDAO.editRecollector(recollector);

response.sendRedirect("http://localhost:8080/RecycleMapApp/recollector");
        }
    }
    
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        Integer id = Integer.parseInt(request.getParameter("id"));
        ConnectionDB connectionDB = new ConnectionDB();
        Connection connection = connectionDB.getConnectionDB();
        RecollectorDAO recollectorDAO = new RecollectorDAO(connection);
        recollectorDAO.deleteRecollector(id);
        String json = new Gson().toJson("OK!");
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

    
}
