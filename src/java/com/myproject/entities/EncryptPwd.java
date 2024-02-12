/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.entities;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import jakarta.servlet.http.HttpServletRequest;

public class EncryptPwd {
    public static String hashPassword(HttpServletRequest request) {
        String passwordToHash = request.getParameter("password");
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(passwordToHash.getBytes());
            byte[] bytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++){
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();
        } 
        catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return generatedPassword;
    }
}






















































//package com.myproject.entities;
//
//import java.sql.*;
//import java.security.MessageDigest;
//import java.security.NoSuchAlgorithmException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
///**
// *
// * @author yrshr
// */
//public class EncryptPwd
//{
//    public static void main(String[] args) throws Exception{
//
//    String passwordToHash = "password";
//    String generatedPassword = null;
//
//    
//        try{
//        MessageDigest md = null;
//        try {
//            md = MessageDigest.getInstance("SHA-256");
//        } catch (NoSuchAlgorithmException ex) {
//            Logger.getLogger(EncryptPwd.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        md.update(passwordToHash.getBytes());
//        byte[] bytes = md.digest();
//        StringBuilder sb = new StringBuilder();
//        for (int i = 0; i < bytes.length; i++) {
//            sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
//        }
//        generatedPassword = sb.toString();
//    }
//    catch(Exception e)
//    {
//            e.printStackTrace();
//    }
//
//    System.out.println (generatedPassword);
//
//    String url = "jdbc:mysql://localhost:3306/encryptiontest";
//    String user = "root";
//    String password = "mysql";
//
//    String query = "INSERT INTO users (password) VALUES (?)";
//
//    try(
//    Connection con = DriverManager.getConnection(url, user, password);
//    PreparedStatement pst = con.prepareStatement(query)
//
//    ) 
//    {
//
//        pst.setString(1, generatedPassword);
//        pst.executeUpdate();
//
//    }
//    catch (SQLException ex) {
//            ex.printStackTrace();
//    }
//}
//}
//
