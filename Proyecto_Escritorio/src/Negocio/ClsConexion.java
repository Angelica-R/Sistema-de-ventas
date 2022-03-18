/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Arnold
 */
public class ClsConexion {
    
    public static Connection Conectar()
    {
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/electrodomesticos","root","");
            
        } 
        catch (ClassNotFoundException e)
        {
            return null;
        }
        catch (SQLException ex)
        {
            return null;
        }
    }
    
    public static Connection conect() {
        
        Connection con = null;
        
    try 
    {
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/dbtienda", "root", "");
        System.out.println("Conexión correcta");
        return conexion;
        
    } catch (SQLException e) {
        
        System.out.println("Error de conexión");
    }
       // Connection conexion = null;
    //return conexion;
        return con;
        
    }
    
}
