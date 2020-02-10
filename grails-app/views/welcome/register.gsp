<!Doctype html>
<html>
    <head>
        <title>Register Here</title>
        <meta name="layout" content="navigation" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="layout" content="navigation" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script type="text/javascript" language="javascript" src="${resource(dir: "assets/javascripts/", file: "jquery.js")}"></script>
        <script type="text/javascript" language="javascript" src="${resource(dir: "assets/javascripts/", file:"script.js")}"></script>
        <style>
        body {
            background:linear-gradient(rgba(0,0,0,.7),rgba(0,0,0,.9)),url('${resource(dir:"assets/images/", file:"post-sample-image.jpg")}');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            min-height: 700px;
        }
        </style>
    </head>
<body>
<br/><br/><br/><br/><br/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <g:link controller="login" action="auth" class="float-right btn btn-outline-primary mt-1">Log in</g:link>
                    <h4 class="card-title mt-2">Sign up</h4>
                </header>
                <article class="card-body">
                    <g:form id="registration_form" controller="user" action="register">
                        <div class="form-row">
                            <div class="col form-group">
                                <label>First name*</label>
                                <input type="text" name="firstName" id="form_username" class="form-control"/>
                                <p class="error_form" id="username_error_message"></p>
                            </div> <!-- form-group end.// -->
                            <div class="col form-group">
                                <label>Last name*</label>
                                <input type="text" name="lastName" id="form_lastname" class="form-control"/>
                            <p class="error_form" id="lastname_error_message"></p>
                            </div> <!-- form-group end.// -->
                        </div> <!-- form-row end.// -->
                        <div class="form-group">
                            <label>Username*</label>
                            <input type="text" name="username" id="form_user" class="form-control"/>
                        <p class="error_form" id="user_error_message"></p>
                        </div> <!-- form-group end.// -->
                        <div class="form-group">
                            <label>Create password*</label>
                            <input class="form-control" name="password" id="form_password" type="password" />
                        <p class="error_form" id="password_error_message"></p>
                        </div> <!-- form-group end.// -->
                        <div class="form-group">
                            <label>Confirm password*</label>
                            <input class="form-control" id="form_retype_password" type="password" />
                        <p class="error_form" id="retype_password_error_message"></p>
                        </div> <!-- form-group end.// -->
                        <div class="form-group">
                        <input name="submit" type="submit" id="submitbtn" class="btn btn-primary btn-block form-control" value="Register" />
                        </div> <!-- form-group// -->
                        <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>
                    </g:form>
                </article> <!-- card-body end .// -->
                <div class="border-top card-body text-center">Have an account? <g:link controller="login" action="auth">Log In</g:link></div>
            </div> <!-- card.// -->
        </div> <!-- col.//-->
    </div> <!-- row.//-->
</div>
<br/><br/>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>