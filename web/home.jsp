<%-- 
    Document   : home
    Created on : 28-Nov-2023, 9:05:36 pm
    Author     : yrshr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.myproject.support_class.ConnectionDb"%>
<%@page import="java.sql.*" %>
<%@page errorPage="errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <!--bootstrap | css-->
        
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&family=Smooch+Sans&display=swap" rel="stylesheet">
        <style>
            body{
                
                color: white;
                background: url(image/bg2.jpg);
                background-repeat:no-repeat;
                background-size:100%;
                padding-top: 0px;
                margin: 0px;

            }
        </style>
    </head>
    <body>
        <!-- navbar -->
        <%@include file="nav_bar.jsp" %> 
        <!-- navbar -->
        <div class="container well-lg " id="body_content">



            <div class="text-content ">
                <br>
                <br>
                <br>
                <p>Welcome to secure password manager</p>
                <br>
                <a>User friendly + Secure + Convenient  </a>

            </div>


        </div>

        <!--bootstrap | javascript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="js/js.js" type="text/javascript"></script>
    </body>
</html>
