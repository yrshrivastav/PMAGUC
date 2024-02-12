<%-- 
    Document   : manager
    Created on : 28-Nov-2023, 9:08:11 pm
    Author     : yrshr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorpage.jsp" %>
<%@include file="profile.jsp" %>
<%@page import="com.myproject.entities.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Manager</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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

        <br>
        <main class="d-flex align-items-center" style="height:84vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header bg-warning text-dark text-center">
                                <img src="image/padlock.png" class="img-fluid" style="max-width: 50px;">
                                <h6>Secure Password</h6>
                            </div>

                            <%
                              Message m2=(Message)session.getAttribute("message2");  
                              if(m2!=null){
                                
                            %>
                            <div class="alert alert-success" role="alert">
                                <a><center><%= m2.getContent() %></center></a>

                            </div>

                            <%
                                
                                session.removeAttribute("message2");
                                }  
                            %>

                            <!--this is for error-->

                            <%
                              Message m3=(Message)session.getAttribute("message3");  
                              if(m3!=null){
                                
                            %>

                            <div class="alert alert-danger" role="alert">
                                <a><center><%= m3.getContent() %></center></a>

                            </div>

                            <%
                                
                                session.removeAttribute("message3");
                                }  
                            %>

                            <div class="card-body bg-secondary text-info" >
                                <form action="Manager" method="POST">


                                    <div class="input-group mb-3">
                                        <span class="input-group-text">
                                            <span class="material-icons">
                                                language
                                            </span>
                                        </span>
                                        <div class="form-floating">
                                            <input name="servicename" type="text" class="form-control" id="floatingInputGroup1" placeholder="App/Website Name" required>
                                            <label for="floatingInputGroup1">App / Website</label>
                                        </div>
                                    </div>

                                    <div class="input-group mb-3">
                                        <span class="input-group-text">
                                            <span class="material-icons">
                                                alternate_email
                                            </span>
                                        </span>
                                        <div class="form-floating">
                                            <input name="userhandle" type="text" class="form-control" id="floatingInputGroup1" placeholder="Username">
                                            <label for="floatingInputGroup1">Username</label>
                                        </div>
                                    </div>

                                    <div class="input-group mb-3">
                                        <span class="input-group-text">
                                            <span class="material-icons">
                                                email
                                            </span>
                                        </span>
                                        <div class="form-floating">
                                            <input name="emailadd" required type="email" class="form-control" id="floatingInputGroup1" placeholder="Email">
                                            <label for="floatingInputGroup1">Email Address</label>
                                        </div>
                                    </div>


                                    <div class="input-group mb-3">
                                        <span class="input-group-text">
                                            <span class="material-icons">
                                                vpn_key
                                            </span>

                                        </span>
                                        <div class="form-floating">

                                            <input name="pasword" required type="password" class="form-control" id="floatingInputGroup1" placeholder="Password" >

                                            <label  for="floatingInputGroup1">Password

                                            </label>

                                        </div>
                                    </div>

                                    <!--                                    <div class="password-container">
                                                                            <input type="password" placeholder="Password..." id="password">
                                                                            <i class="fa-solid fa-eye" id="eye"></i>
                                                                        </div>-->


                                    <div class="input-group mb-3">
                                        <span class="input-group-text">
                                            <span class="material-icons">
                                                comment
                                            </span>
                                        </span>
                                        <div class="form-floating">
                                            <!--                                       <input type="text" class="form-control" id="floatingInputGroup1" placeholder="Notes">-->
                                            <textarea name="note" class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>                                            
                                            <label for="floatingInputGroup1">Notes</label>
                                        </div>
                                    </div>


                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save Me</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>    
        </main>


    </body>
</html>

