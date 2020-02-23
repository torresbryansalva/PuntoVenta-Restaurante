/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Lenovo
 */
public class conexion {
    public static Connection conectar(){
    
        try {
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/restaurante", "root", "");
            return cn;
        } catch (SQLException e) {
            System.out.println("Error en conexión local " + e);
        }
        return (null);
    }
    
}
