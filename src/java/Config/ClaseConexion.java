package Config;

import java.sql.*;

public class ClaseConexion {
    Connection con;
    public ClaseConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");//Importar Libreria
            con=DriverManager.getConnection("jdbc:mysql://localhost/ventas?user=root&password=");
        } catch (Exception e) {
            System.err.println("Error. "+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
}
