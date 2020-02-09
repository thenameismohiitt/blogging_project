<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>welcome</title>
    <meta name="layout" content="navigationUser"/>
</head>
<body>
<br/><br/><br/><br/>
        <div class="text-center text-secondary">
            <h2>Got Blogs ?</h2>
            <p>We will post for you</p>
        </div>
     <div class="d-flex justify-content-center">
     <div class="col-lg-8">
         <g:form class="text-muted"   controller="customer" action="create">
            <div class="form-group">
                <label for="title">Title*</label>
                <input type="text" class="form-control" name="title" id="title" placeholder="enter title" required />
            </div>
            <div class="form-group">
                <label for="content">Content*</label>
                <textarea class="form-control" id="content" name="content" rows="8" placeholder="enter your content here" required></textarea>
            </div>
            <input class="btn btn-outline-success btn-block" type="submit" name="submit" value="Submit blogs with us">
        </g:form>
     </div>
     </div>
</body>
</html>