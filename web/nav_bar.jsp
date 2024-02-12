<%-- 
    Document   : nav_bar
    Created on : 28-Nov-2023, 9:09:10 pm
    Author     : yrshr
--%>

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
            <a href="login.jsp"  class="btn btn-dark" type="button" <span class="fa fa-sign-in-alt" style="margin-right: 7px">Sign In</a>
            <a href="register.jsp" class="btn btn-dark" type="button" class="fa fa-user-plus" style="margin-right: 7px">Register</a>
        </div>
    </div>
</nav>
