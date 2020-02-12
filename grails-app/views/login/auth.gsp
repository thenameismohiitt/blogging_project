<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="layout" content="navigation" />
    <!-- Bootstrap CSS -->
    <title>Login</title>
    <style>
    body {
        background: linear-gradient(rgba(0, 0, 0, .7), rgba(0, 0, 0, .9)), url('${resource(dir:"assets/images/", file:"post-bg.jpg")}');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        min-height: 500px;
    }
    </style>
    <script type="text/javascript" language="javascript"
            src="${resource(dir: "assets/javascripts/", file: "script.js")}"></script>
</head>

<body>
<br/><br/><br/><br/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <h4 class="card-title mt-2">Sign In</h4>
                    <g:if test='${flash.message}'>
                        <div style="color:red">${flash.message}</div>
                    </g:if>
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
                        <input type="password" class="form-control" id="password"
                               name="${passwordParameter ?: 'password'}"
                               required/>
                    </div> <!-- form-group end.// -->
                    <p id="remember_me_holder">
                        <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}"
                               id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                        <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                    </p>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary"
                               value="${message(code: 'springSecurity.login.button')}"/>
                    </div> <!-- form-group// -->
                </form>
               </article> <!-- card-body end .// -->
                <div class="border-top card-body text-center">New to our website? <g:link controller="welcome"
                                                                                          action="register">Register Here</g:link></div>

                <div class="text-center card-body">Forgot Password?&nbsp;<span><g:link controller="welcome"
                                                                                       action="reset">Click Here</g:link></span>
                </div>
            </div> <!-- card.// -->
        </div> <!-- col.//-->
    </div> <!-- row.//-->
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>