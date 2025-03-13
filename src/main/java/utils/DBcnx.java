package utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBcnx {
    private static final String URL = "jdbc:mysql://localhost:3306/sportflow";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Charger le driver

        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}




