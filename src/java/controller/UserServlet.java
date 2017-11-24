package controller;

import dataAccess.ConnectionDB;
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
import model.User;

@WebServlet(urlPatterns = {"/user"})
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.jsp";
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "inicio";
        }
        if (action.equals("inicio")) {
            url = "/index.jsp";
        } else if (action.equals("addUser")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String fullName = request.getParameter("fullName");
            String telephone = request.getParameter("telephone");
            // store data in User object and save User object in database
            User user = new User(email, password, fullName, telephone);
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();

            UserDAO userDAO = new UserDAO(connection);
            userDAO.addUser(user);

            url = "/index.jsp";

        } else if (action.equals("verifyUser")) {

            String email = request.getParameter("email");
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();
            
            UserDAO userDAO = new UserDAO(connection);
                
            String password = request.getParameter("password");
            if (email.toUpperCase().equals("ADMINISTRADOR@PROINDER.COM") && password.equals("hola")) {
                request.setAttribute("users", userDAO.getUserList());
                url = "/displayAll.jsp";
            } else
            {
                if (userDAO.verifyUser(email, password)) {
                    url = "/views/user/map.jsp";
                } else {
                    JOptionPane.showMessageDialog(null, "Incorrect username and/or password");
                    url = "/index.jsp";
                }
            }
        }

        // forward request and response objects to specified URL

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }
    /*
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
      String action = request.getParameter("action");
      String url="";
    if (action.equals("display")) {
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();
            UserDAO userDAO = new UserDAO(connection);
            ArrayList<User> users = userDAO.getUserList();
            request.setAttribute("users", users);
            url = "/displayAll.jsp";
        }
       getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);*/

}
