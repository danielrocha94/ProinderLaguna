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
            synchronized (statement) {
                statement.setInt(1, recollector.getId());
                statement.setString(2, recollector.getFullName());
                statement.setDouble(3, recollector.getLatitude());
                statement.setDouble(4, recollector.getLongitude());
                statement.setString(5, recollector.getTelephone());

                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
    }

    public void deleteRecollector(Integer id) {
        try {
            statement = connection.prepareStatement("DELETE FROM public.recollector WHERE id = ?");
            synchronized (statement) {
                statement.setInt(1, id);
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
                    recollector.setId(results.getInt("id"));
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
    
    public Recollector getRecollectorById(String id) {
        Recollector recollector = new Recollector();
        try {
            statement = connection.prepareStatement("SELECT * FROM public.recollector WHERE id = ?");
            synchronized (statement) {
                statement.setInt(1, Integer.parseInt(id));
                ResultSet result = statement.executeQuery();
                if (result.next()) {
                  recollector.setFullName(result.getString("email"));
                  recollector.setFullName(result.getString("full_name"));
                  recollector.setTelephone(result.getString("telephone"));
                  recollector.setLatitude(result.getDouble("latitude"));
                  recollector.setLongitude(result.getDouble("longitude"));
                }
            }
            statement.close();
        } catch ( SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        return recollector;
    }
}
