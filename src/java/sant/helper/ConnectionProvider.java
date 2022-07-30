/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sant.helper;
import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
        try {
            if(con==null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/myproject","root","");
            
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

   
    
}
