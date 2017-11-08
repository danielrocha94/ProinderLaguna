package dataAccess;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Logger;
import java.util.logging.Level;
import model.Recollector;

public class RecollectorDAO {

    private PreparedStatement statement;
    private Connection connection;
    private static final Logger logger = Logger.getLogger(RecollectorDAO.class.getName());

    public RecollectorDAO(Connection connection) {
        this.connection = connection;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void addRecollector(Recollector recollector) {
        try {
            statement = connection.prepareStatement("INSERT INTO public.recollector VALUES(?,?,?,?,?)");
            synchronized (statement) {;
                statement.setString(1, recollector.getId());
                statement.setString(2, recollector.getFullName());
                statement.setString(3, recollector.getTelephone());
                statement.setDouble(4, recollector.getLatitude());
                statement.setDouble(5, recollector.getLongitude());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
    }
    
    public ArrayList<Recollector> getRecollectorList() {
        ArrayList<Recollector> recollectorList = new ArrayList<Recollector>();
       
        try {
            statement = connection.prepareStatement("select * from public.recollector");
            synchronized (statement) {
                ResultSet results = statement.executeQuery();
                while (results.next()) {
                    Recollector recollector = new Recollector();
                    recollector.setId(results.getString("id"));
                    recollector.setFullName(results.getString("full_name"));
                    recollector.setTelephone(results.getString("telephone"));
                    recollector.setLatitude(results.getDouble("latitude"));
                    recollector.setLongitude(results.getDouble("longitude"));
                    recollectorList.add(recollector);
                }
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        return recollectorList;
    }
    
    public ArrayList<Recollector> getRecollectorData() {
        ArrayList<Recollector> recollectorList = new ArrayList<Recollector>();
             
        try {
            statement = connection.prepareStatement("select * from public.recollector");
            synchronized (statement) {
                ResultSet results = statement.executeQuery();
                while (results.next()) {
                    Recollector recollector = new Recollector();
                    recollector.setFullName(results.getString("full_name"));
                    recollector.setTelephone(results.getString("telephone"));
                    recollector.setLatitude(results.getDouble("latitude"));
                    recollector.setLongitude(results.getDouble("longitude"));
                    recollectorList.add(recollector);
                }
                
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        return recollectorList;
    }
}
