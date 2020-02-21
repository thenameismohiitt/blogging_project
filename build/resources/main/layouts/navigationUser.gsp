<!DOCTYPE html>
<html>
<head>
    <link href="${resource(dir: "assets/stylesheets/", file: "bootstrap.min_new.css")}" rel="stylesheet">
    <link href="${resource(dir: "assets/stylesheets/", file: "all.min.css")}" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!-- Custom styles for this template -->
    <link href="${resource(dir: "assets/stylesheets/", file: "clean-blog.min.css")}" rel="stylesheet">
    <g:layoutHead/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-dark" id="mainNav">
    <div class="container">
        <g:link class="navbar-brand" controller="customer" action="index">We Love Blogging</g:link>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <g:link class="nav-link" controller="customer" action="index">Home</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" controller="customer" action="show">View Blog</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" controller="customer" action="create">Create Blog</g:link>
                </li>
                <li class="nav-item">
                    <sec:ifLoggedIn>
                        <div class="dropdown">
                            <a style="font-size: 10px;" class="btn btn-outline-warning dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Hello <sec:username />
                            </a>
                            <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuLink">
                                <g:link class="dropdown font-weight-bold text-danger text-decoration-none"  controller="logout">Logout</g:link>
                            </div>
                        </div>
                    </sec:ifLoggedIn>
                </li>
            </ul>
        </div>
    </div>
</nav>
<g:layoutBody/>
<hr>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <p class="copyright text-muted">Copyright &copy; Mohit Chandani</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>