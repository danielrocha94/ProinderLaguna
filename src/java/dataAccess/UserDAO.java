
package dataAccess;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Logger;
import java.util.logging.Level;
import model.User;

public class UserDAO {

    private PreparedStatement statement;
    private Connection connection;
    private static final Logger logger = Logger.getLogger(UserDAO.class.getName());

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void addUser(User user) {
        try {
            statement = connection.prepareStatement("INSERT INTO public.user_account VALUES(?,?,?,?)");
            synchronized (statement) {
                statement.setString(1, user.getEmail());
                statement.setString(2, user.getFullName());
                statement.setString(3, user.getTelephone());
                statement.setString(4, user.getPassword());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
    }
    
    public boolean verifyUser(String email, String password) {
        User user=null;
        try {
            statement = connection.prepareStatement("select * from public.user_account where email=? and password=?");
            statement.setString(1, email);
            statement.setString(2, password);
               synchronized (statement) {
                ResultSet results = statement.executeQuery();
                while (results.next()) {
                    user = new User();
                    user.setEmail(results.getString("email"));
                    user.setPassword(results.getString("password"));
                    user.setFullName(results.getString("full_name"));
                    user.setTelephone(results.getString("telephone"));
                }
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        if(user!=null){
        return true;
        }
        return false;
    }
    
    public ArrayList<User> getUserList() {
        ArrayList<User> userList = new ArrayList<User>();
       
        try {
            statement = connection.prepareStatement("select * from public.user_account");
            synchronized (statement) {
                ResultSet results = statement.executeQuery();
                while (results.next()) {
                    User user = new User();
                    user.setEmail(results.getString("email"));
                    user.setPassword(results.getString("password"));
                    user.setFullName(results.getString("full_name"));
                    user.setTelephone(results.getString("telephone"));
                    userList.add(user);
                }
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        return userList;
    }
    
        
    public User getUserByEmail(String email) {
        User user = new User();
        try {
            statement = connection.prepareStatement("SELECT * FROM public.user_account WHERE email = ?");
            synchronized (statement) {
                statement.setString(1, email);
                ResultSet result = statement.executeQuery();
                if (result.next()) {
                  user.setEmail(result.getString("email"));
                  user.setPassword(result.getString("password"));
                  user.setFullName(result.getString("full_name"));
                  user.setTelephone(result.getString("telephone"));
                }
            }
            statement.close();
        } catch ( SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        return user;
    }
    

}
