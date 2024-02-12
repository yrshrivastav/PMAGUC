/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.servlet;

import com.myproject.dao.UserDao;
import com.myproject.entities.Message;
import com.myproject.entities.RSAEncryptDecrypt;
import com.myproject.entities.User;
import com.myproject.support_class.ConnectionDb;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yrshr
 */
public class Manager extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Manager</title>");
            out.println("</head>");
            out.println("<body>");

            String webname = request.getParameter("servicename");

            String handle = request.getParameter("userhandle");

            String mailid = request.getParameter("emailadd");
            
            String password = request.getParameter("pasword");

            String note = request.getParameter("note");
            
            
            String hashedPassword = "null";
            String decryptedPassword = "null";
            RSAEncryptDecrypt rsa = new RSAEncryptDecrypt();
            try{
            hashedPassword = rsa.encrypt(password);
            decryptedPassword = rsa.decrypt(hashedPassword);

            }catch(Exception e){}

            //create user object and set all data to that object
            User user1 = new User(webname, handle, mailid, hashedPassword, note);

            //create object for user dao
            UserDao userdao1 = new UserDao(ConnectionDb.getConnection());
            if (userdao1.savePassword(user1)) {
                
                
                //if user data saved successfully

                Message message2 = new Message("Saved successfully !!", "success", "alert-success");

                HttpSession s1 = request.getSession();
                s1.setAttribute("message2", message2);
            
                response.sendRedirect("manager.jsp");

            } else {

                
                Message message3 = new Message("Please try again !!", "error", "alert-danger");

                HttpSession s2 = request.getSession();
                s2.setAttribute("message3", message3);

                response.sendRedirect("manager.jsp");

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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Manager.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Manager.class.getName()).log(Level.SEVERE, null, ex);
        }
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
