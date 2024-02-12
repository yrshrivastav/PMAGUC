<%-- 
    Document   : errorpage
    Created on : 28-Nov-2023, 9:07:31 pm
    Author     : yrshr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>

        <!--bootstrap | css-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <style>
            body{

                background: url(image/login-bg.jpg);
                background-repeat:no-repeat;
                background-size:100%;
                padding-top: 0px;
                margin: 0px;
            }
        </style>

    </head>
    <body>
        <div class="container text-center">
            <br>
            <br>
            <img src="image/problem.png" class="img-fluid mt-2">
            
            <br>
            <a class="btn btn-primary mt-3" href="home.jsp">Home</a>
        </div>

    </body>
</html>

