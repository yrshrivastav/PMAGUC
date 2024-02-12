<%-- 
    Document   : profile
    Created on : 28-Nov-2023, 9:06:49 pm
    Author     : yrshr
--%>

<%@page import="com.myproject.entities.User" %>
<%@page errorPage="errorpage.jsp" %>

<%
    
    User user=(User)session.getAttribute("currentUser");
    if(user==null){
    response.sendRedirect("login.jsp");
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <!--bootstrap | css-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&family=Smooch+Sans&display=swap" rel="stylesheet">
        
        <style>
            body{
                /*color: white;*/
                background: url(image/login-bg.jpg);
                background-repeat:no-repeat;
                background-size:100%;
                padding-top: 0px;
                margin: 0px;


            }
        </style>

    </head>
    <body>

        <!--navigation bar starts-->



        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" >My Project</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active"  href="manager.jsp">Manager</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="generator.jsp">Generator</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="contact.jsp">Contact</a>
                        </li>
                    </ul>
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href="#!" data-bs-toggle="modal" data-bs-target="#profile-modal"  class="btn btn-dark" type="button"> <span class="fa fa-user-circle" style="margin-right: 7px"></span> <%= user.getUname()%> </a>    
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href="Logout" class="btn btn-dark" type="button"><span class="fa fa-sign-out" style="margin-right: 7px"></span>Logout</a>    
                </div>

            </div>
        </nav>

        <!--navigation bar ends-->


        <!--profile modal starts here-->


        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-body">
                        <div class="container text-dark text-center">
                            
                            <img src="image/profile.png" class="img-fluid" style="border-radius:50%;max-width: 100px;">
                            <h5 class="modal-title mt-2" id="exampleModalLabel"><%=user.getUname()%></h5>
                            <table class="table">
                                <br>
                                <tbody>
                                    <tr>
                                        <th scope="row">ID :</th>
                                        <td><%= user.getId() %></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Email :</th>
                                        <td><%= user.getEmail() %></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Phone :</th>
                                        <td><%= user.getPhone() %></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Registered On :</th>
                                        <td><%= user.getRdate() %></td>

                                    </tr>

                                </tbody>
                            </table>
                            <br>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!--profile modal ends here-->


        <!--bootstrap | javascript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>

