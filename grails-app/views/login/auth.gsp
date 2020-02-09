<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="layout" content="navigation" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Login</title>
    <style>
    body {
        background:linear-gradient(rgba(0,0,0,.7),rgba(0,0,0,.9)),url('${resource(dir:"assets/images/", file:"post-bg.jpg")}');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        min-height: 500px;
    }
    </style>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <h4 class="card-title mt-2">Sign In</h4>
                </header>
               <article>
                <form class="card-body" action="${postUrl ?: '/login/authenticate'}" method="POST" autocomplete="off">
                    <div class="form-group">
                            <label for="username">Username</label>
                        <input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username"
                               required/>
                    </div> <!-- form-group end.// -->
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="${passwordParameter ?: 'password'}"
                               required />
                    </div> <!-- form-group end.// -->
                    <div class="form-group">
                    <input type="submit"  class="btn btn-primary form-control" value="${message(code: 'springSecurity.login.button')}" />
                 </div> <!-- form-group// -->
                </form>
                </article> <!-- card-body end .// -->
                <div class="border-top card-body text-center">New to our website? <g:link controller="welcome" action="register">Register Here</g:link></div>
            </div> <!-- card.// -->
        </div> <!-- col.//-->
    </div> <!-- row.//-->
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>