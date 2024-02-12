<%-- 
    Document   : register
    Created on : 28-Nov-2023, 9:06:35 pm
    Author     : yrshr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorpage.jsp" %>
<%@page import="com.myproject.entities.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <!--bootstrap | css-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <style>
            body{
                color: white;
                background: url(image/login-bg.jpg);
                background-repeat:no-repeat;
                background-size:100%;
                padding-top: 0px;
                margin: 0px;


            }
        </style>

    </head>
    <body>
        <main>

            <!--nav bar starts-->

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
                        <a href="login.jsp"  class="btn btn-dark" type="button"><i class='fas fa-sign-in-alt' style="margin-right: 8px"></i>Sign In</a>

                    </div>
                </div>
            </nav>

            <!--nav bar ends-->

            <div class="container">

                <div class="col-md-6 offset-md-3">
                    <br>
                    <div class="card">
                        <div class="card-header bg-warning text-dark text-center">
                            <img src="image/adduser.png" class="img-fluid" style="max-width: 50px;">
                            <h6>Register Here</h6>
                        </div>

                        <%
                              Message m=(Message)session.getAttribute("message");  
                              if(m!=null){
                                
                        %>

                        <div class="alert alert-success" role="alert">
                            <a><center><%= m.getContent() %></center></a>

                        </div>

                        <%
                                
                            session.removeAttribute("message");
                            }  
                        %>

                        <!--this is for error-->

                        <%
                          Message m1=(Message)session.getAttribute("message1");  
                          if(m1!=null){
                                
                        %>

                        <div class="alert alert-danger" role="alert">
                            <a><center><%= m1.getContent() %></center></a>

                        </div>

                        <%
                                
                            session.removeAttribute("message1");
                            }  
                        %>

                        <div class="card-body bg-secondary text-info">

                            <form action="Register"  method="POST">

                                <div class="mb-3">
                                    <label for="user_name" class="form-label">Username</label>
                                    <input name="uname" type="text" class="form-control" id="user_name" placeholder="Enter user name" required>
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your email" required pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$">
                                    <!--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
                                </div>

                                <div class="mb-3">
                                    <label for="user_no" class="form-label">Phone Number</label>
                                    <input name="phone" type="tel" class="form-control" id="user_no" placeholder="Enter your number" required pattern="[6-9]{1}[0-9]{9}">
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter your password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                           title="Must contain at least 8 character, a number, an uppercase and a lowercase ">
                                </div>

                                
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Register Me</button>
                                </div>
                            </form>

                        </div>

                    </div>

                </div>

            </div>

        </main>

        <!--bootstrap | javascript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--javascript--> 
        <script src="js/js.js" type="text/javascript"></script>
    </body>
</html>

