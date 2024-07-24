package org.example.config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Carlos
 */
public class Conexion {
    private static String DB = "sistema_tickets";
    private static String URL = "jdbc:mysql://localhost:3306/" + DB;
    // "com.mysql.cj.jdbc.Driver"
    private static String USER = "root";
    private static String PASSWORD = "";

    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexion exitosa a la base de datos MySQL");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    return con;
    }
}
