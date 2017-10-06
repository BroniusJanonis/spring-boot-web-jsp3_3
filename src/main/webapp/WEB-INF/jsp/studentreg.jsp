<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Studentų apskaitos puslapis</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="WEB-INF/jsp/css/style.css">
    <%--<script src="css/bootstrap-3.3.7-dist/js/bootstrap.js"></script>--%>
    <%--<script src="/css/bootstrap-3.3.7-dist/js/npm.js"></script>--%>

</head>
<body>

<div class="container" style="margin-top: 20px">

    <div class="text-center">
        <h2>Registracijos langas</h2>
    </div>

</div>
<div class="container" style="margin-top: 20px; margin-bottom: 10px; width: 350px; background-color: darkgray">
    <div class="row">
        <div class="container text-center">
            <form method="get" action="/addstudent">
                <div class="form-group" style="margin-top: 20px">
                    <input class="form-control" type="text" name="name" placeholder="Vardas">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="surname" placeholder="Pavardė">
                </div>
                <div class="form-group">
                    <input type="text" name="schoolname" class="form-control" placeholder="Mokykla">
                </div>
                <div class="form-group">
                    <input type="text" name="parentinfo" class="form-control" placeholder="Tevu informacija">
                </div>
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" placeholder="Telefonas">
                </div>
                <div class="form-group">
                    <input type="text" name="email" class="form-control" placeholder="El.paštas">
                </div>
                <div class="form-group">
                    <input type="number" name="course" class="form-control" placeholder="Kursas">
                </div>
                <div class="form-group">
                    <textarea name="moreinfo" class="form-control" rows="3" style="height: 100px"
                              placeholder="Papildoma informacija"></textarea>
                </div>
                <div class="form-group">
                    <button name="btn" class="btn" type="submit" style="">registruoti</button>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>