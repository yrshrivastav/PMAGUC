/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.entities;

import java.sql.*;

/**
 *
 * @author yrshr
 */
public class User {

    //this is for user registration 
    private int id;
    private String uname;
    private String email;
    private String phone;
    private String pwd;
    private Timestamp rdate;

    //this is for user password manager
    private int sno;
    private String sname;
    private String username;
    private String emailid;
    private String pswd;
    private String notes;

    // Constructor for user registration starts here
    //this constructor has never been used since we are not liable to provide registration date(rdate) manually, it is automatically fetching the current date along with time from the local machine
    public User(int id, String uname, String email, String phone, String pwd, Timestamp rdate) {
        this.id = id;
        this.uname = uname;
        this.email = email;
        this.phone = phone;
        this.pwd = pwd;
        this.rdate = rdate;
    }

    public User(String uname, String email, String phone, String pwd) {
        this.uname = uname;
        this.email = email;
        this.phone = phone;
        this.pwd = pwd;
    }

    // Constructor for user registration ends here
    
    
    //this default constructor has been made for 
    public User() {
    }

    
    //Constructor for user password manager starts here
    //this constructor has never been used since we are not liable to provide serial no(sno) manually, it is automatically incremented by the database 
    public User(int sno, String sname, String username, String emailid, String pswd, String notes) {
        this.sno = sno;
        this.sname = sname;
        this.username = username;
        this.emailid = emailid;
        this.pswd = pswd;
        this.notes = notes;
    }

    public User(String sname, String username, String emailid, String pswd, String notes) {
        this.sname = sname;
        this.username = username;
        this.emailid = emailid;
        this.pswd = pswd;
        this.notes = notes;
    }
    
    // Constructor for user registration ends here

    //getter and setter for user registration starts here
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Timestamp getRdate() {
        return rdate;
    }

    public void setRdate(Timestamp rdate) {
        this.rdate = rdate;
    }
    
    //getter and setter for user registration ends here
    
    
    //getter and setter for user password manager starts here

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
        
    //getter and setter for user password manager ends here

}
