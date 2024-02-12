/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.myproject.dao;
import com.myproject.entities.User;
import java.sql.*;
/**
 *
 * @author yrshr
 */
public class UserDao 
{
    private Connection conn;

    public UserDao(Connection conn) 
    {
        this.conn = conn;
    }
    
    // method for registering user to database
    public boolean saveUser(User user)
    {
        boolean f = false;
        try 
        {
            //road for database
            String query="insert into user (uname, email, phone, pwd) values (?, ?, ?, ?)";
            PreparedStatement pstmt = this.conn.prepareStatement(query);
            pstmt.setString(1,user.getUname());
            pstmt.setString(2,user.getEmail());
            pstmt.setString(3,user.getPhone());
            pstmt.setString(4,user.getPwd());
            
            
            pstmt.executeUpdate();
            f = true;   //if query executed successfully then it return true 
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    //get user by email and password
    
    public User getUserByEmailAndPassword(String email, String pwd)
    {
        User user = null;
        try
        {
             String query="select * from user where email=? and pwd=?";
             PreparedStatement pstmt=conn.prepareStatement(query);
             pstmt.setString(1,email);
             pstmt.setString(2,pwd);
             ResultSet set=pstmt.executeQuery();
             
             if(set.next()){
                 user = new User();
                 
                 //data from db
                 //String name=set.getString("uname");
                 //set to user object
                 //user.setUname(name);
                 user.setId(set.getInt("id"));
                 user.setUname(set.getString("uname"));
                 user.setEmail(set.getString("email"));
                 //user.setPwd(set.getString("pwd"));
                 user.setPhone(set.getString("phone"));
                 user.setRdate(set.getTimestamp("rdate"));
                 
             }
        }
        catch(Exception e)
        {   
        }

        return user;
    }
    
        public boolean savePassword(User user)
    {
        boolean f = false;
        try 
        {
            //road for database
            String query="insert into manager (sname, username, emailid, pswd, notes) values (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = this.conn.prepareStatement(query);
            pstmt.setString(1,user.getSname());
            pstmt.setString(2,user.getUsername());
            pstmt.setString(3,user.getEmailid());
            pstmt.setString(4,user.getPswd());
            pstmt.setString(5,user.getNotes());
            
            
            pstmt.executeUpdate();
            f = true;   //if query executed successfully then it return true 
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
}

