<%-- 
    Document   : generator
    Created on : 28-Nov-2023, 9:07:54 pm
    Author     : yrshr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page errorPage="errorpage.jsp" %>--%>
<%@include file="nav_bar.jsp"%>
<%@page import="java.util.Random" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generator</title>
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

        <main class="d-flex align-items-center" style="height:84vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header bg-warning text-dark text-center">

                                <img src="image/lock.png" class="img-fluid" style="border-radius:50%;max-width: 50px;">
                                <h6>Generate Password </h6>

                            </div>

                            <div class="card-body bg-secondary text-info" >
                                <form action="Generator" method="POST">
                                    
                                    <div class="mb-3">
                                        <label for="exampleInputLength" class="form-label">Password Length</label>
                                        <input name="length" required type="number" class="form-control" id="length"  placeholder="Enter length of character" min="8" max="25">

                                    </div>




                                    <div class="mb-3">
                                        <label for="exampleInputPasswordgenerated" class="form-label">Generated Password</label>
                                        <input name="gpass" class="form-control" value="<%= request.getAttribute("pass") %>" placeholder="Your Password ">

                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Generate</button>
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
