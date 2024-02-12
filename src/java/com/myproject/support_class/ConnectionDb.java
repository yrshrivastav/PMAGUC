/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.myproject.support_class;
import java.sql.*;
/**
 *
 * @author yrshr
 */
public class ConnectionDb 
{
   private static Connection conn;
//   String dburl="jdbc:mysql://localhost:3306/myproject";
//   String dbuser="root";
//   String dbpass="mysql";
   public static Connection getConnection()
   {
       try
       {
           
        if(conn == null)
        {
           //Load the driver
           //Driver loading in type 4 driver is optional since it is automatically loaded by jvm when we give driver url in getConnection method parameter
           
           Class.forName("com.mysql.jdbc.Driver");
           
           //Esablish Connection
           
           //conn=DriverManager.getConnection(dburl, dbuser, dbpass);
           conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmaguc", "root", "mysql");
       }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return conn;
    }
  
}

