<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="navigation"/>
    <title>Reset your password</title>
    <style>
    body {
        background: linear-gradient(rgba(0, 0, 0, .7), rgba(0, 0, 0, .9)), url('${resource(dir:"assets/images/", file:"about-bg.jpg")}');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        min-height: 700px;
    }
    </style>
    <script type="text/javascript" language="javascript" src="${resource(dir: "assets/javascripts/", file:"script.js")}"></script>
</head>

<body>
<br/><br/><br/><br/><br/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <h4 class="card-title mt-2">Reset</h4>
                    <g:if test="${flash.message}">
                        <div style="color:red">${flash.message}</div>
                    </g:if>
                </header>
                <article>
                    <g:form class="card-body" controller="welcome" action="send" method="POST" autocomplete="off">
                        <div class="form-group">
                            <label for="email">Email*</label>
                            <input type="email" class="form-control" name="email" id="email"
                                   required/>
                        </div><!-- form-group end.// -->
                        <div class="card-body form-group">
                            <input type="submit" class="btn btn-success" value="Reset"/>
                        </div>
                    </g:form>
                </article>
            </div>
        </div>
    </div> <!-- row.//-->
</div>
</body>
</html>