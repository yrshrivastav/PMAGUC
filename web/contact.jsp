<%-- 
    Document   : contact
    Created on : 28-Nov-2023, 9:08:36 pm
    Author     : yrshr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorpage.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <!--bootstrap | css-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

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

        <!--nav bar starts here -->

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
<!--                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href="login.jsp"  class="btn btn-dark" type="button">Sign In</a>
                    <a href="register.jsp" class="btn btn-dark" type="button">Register</a>
                </div>
-->
            </div>
        </nav>

        <!--nav bar ends here -->


        <main class="d-flex align-items-center" style="height:84vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header bg-warning text-dark text-center">
                                <img src="image/contact.png" class="img-fluid" style="max-width: 50px;">
                                <h6>Contact Us</h6>

                            </div>

                            <div class="card-body bg-secondary text-dark">
                                <form>
                                    <div class="mb-3">
                                        <label for="teamname" class="form-label"><h6>Developer Name  :   Unknown</h6></label>

                                    </div>

                                    <div class="mb-3">
                                        <label for="email" class="form-label"><h6>Email Address    :   contact@myproject.com</h6></label>

                                    </div>

                                    <div class="mb-3">
                                        <label for="number" class="form-label"><h6>Phone Number    :   9876543210</h6></label>

                                    </div>

                                    <div class="mb-3">
                                        <label for="address" class="form-label"><h6>Address    :   Durgapur, West Bengal</h6></label>

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
