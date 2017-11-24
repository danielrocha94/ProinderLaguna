package controller;

import dataAccess.ConnectionDB;
import dataAccess.UserDAO;
import java.io.IOException;  
import java.io.PrintWriter;  
import java.sql.Connection;
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
import model.User;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException { 
        
        String action = request.getParameter("action");
        PrintWriter out =response.getWriter();  
        
        if (action.equals("getUserByEmail")) {
            response.setContentType("text/html");  
                      
            String email=request.getParameter("email");  
            String password=request.getParameter("password");  
        
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();

            UserDAO userDAO = new UserDAO(connection);
            User user = userDAO.getUserByEmail(email);

            if(user.hasPassword(password)){
                out.print("Welcome, "+ user.getFullName());  
                HttpSession session=request.getSession();  
                session.setAttribute("email", user.getEmail());  
                session.setAttribute("fullName", user.getFullName()); 
                request.getRequestDispatcher("/views/user/profile.jsp").include(request, response);  
            }else{
                out.print("Sorry, username or password error!");  
                request.getRequestDispatcher("/views/user/login.jsp").include(request, response);  
            }
        out.close();
        }
    }
}

