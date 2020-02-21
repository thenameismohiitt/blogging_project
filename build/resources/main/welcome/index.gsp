<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blogging Webiste</title>
    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: "assets/stylesheets/", file: "bootstrap.min_new.css")}" rel="stylesheet">
    <meta name="layout" content="navigation"/>
    <!-- Custom fonts for this template -->
    <link href="${resource(dir: "assets/stylesheets/", file: "all.min.css")}" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <!-- Custom styles for this template -->
    <link href="${resource(dir: "assets/stylesheets/", file: "clean-blog.min.css")}" rel="stylesheet">
</head>

<body>

<!-- Navigation -->


<!-- Page Header -->
<header class="masthead" style="background-image: url('${resource(dir: "assets/images/", file: "home-bg.jpg")}')">
    <div class="overlay"></div>

    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="site-heading">
                    <h1>Blogging Project</h1>
                    <span class="subheading">- a blog project by <u>Mohit</u> <u>Chandani</u></span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
            <g:if test="${blogs.size() == 0}">
                <p class="text-center text-muted">It is empty here</p>
            </g:if>
            <g:else>
                <div class="post-preview">
                <a href="#">
                    <g:each in="${blogs}" var="blog">
                        <h2 class="post-title text-capitalize">
                            ${blog.title}
                        </h2>

                        <h3 class="post-subtitle text-capitalize">
                            ${blog.content}
                        </h3>
                        </a>
                        <p class="post-meta text-capitalize">Posted by
                            <a href="#">${blog.user.firstName} ${blog.user.lastName}</a>
                        </p>
                        <hr>
                    </g:each>
                </div>
            </g:else>
        </div>
    </div>
</div>
<!-- Footer -->


<!-- Bootstrap core JavaScript -->
<script src="${resource(dir: "assets/javascripts/", file: "jquery.min.js")}"></script>
<script src="${resource(dir: "assets/javascripts/", file: "bootstrap.bundle.min_new.js")}"></script>

<!-- Custom scripts for this template -->
<script src="${resource(dir: "assets/javascripts/", file: "clean-blog.min.js")}"></script>

</body>

</html>
