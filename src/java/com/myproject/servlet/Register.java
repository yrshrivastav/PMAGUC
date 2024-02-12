/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.myproject.servlet;

import com.myproject.dao.UserDao;
import com.myproject.entities.EncryptPwd;
import com.myproject.entities.Message;
import com.myproject.entities.User;
import com.myproject.support_class.ConnectionDb;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author yrshr
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            //fetch registration data
            String name=request.getParameter("uname");
            // out.println(name);
            String email=request.getParameter("email");
            // out.println(email);
            String phone=request.getParameter("phone");
            // out.println(phone);
            //String password=request.getParameter("password"); commenting this line for checking encryption
            // out.println(password);
            
            String hashedPassword = EncryptPwd.hashPassword(request);
            
            //create user object and set all data to that object
            
            User user=new User(name, email, phone, hashedPassword);
            
            //create object for user dao
            
            UserDao userdao = new UserDao(ConnectionDb.getConnection());
            if(userdao.saveUser(user)){
                //if registered seccessfully
                //out.println("<h1>Welcome to our family");
                
                Message message=new Message("Registered successfully !!", "error", "alert-success" );
                
                HttpSession s=request.getSession();
                s.setAttribute("message", message);
                
                response.sendRedirect("register.jsp");
                
            }
            else{
                
                //out.println("<h1>Already registered with this email : "+email+"");
                
                Message message1=new Message("Already registered with this email !!", "error", "alert-danger" );
                
                HttpSession s=request.getSession();
                s.setAttribute("message1", message1);
                
                response.sendRedirect("register.jsp");
            
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
