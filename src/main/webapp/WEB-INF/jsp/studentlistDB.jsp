<%--
  Created by IntelliJ IDEA.
  User: Dainius
  Date: 2017.08.30
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="demo.studentsDemo.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Studentu sarasas</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css">
</head>
<body>
<div class="container" style="background-color: #c1deda">
    <h2>Studentu sarasas</h2>
    <br>
</div>
<%--<form method="post" action="/delstud">--%>
    <form>

    <div class="container">
        <button type="submit" onclick="form.action='/addstudredirect'" formmethod="post">
            Prideti Nauja Studenta
        </button>
        <button type="submit" onclick="addStudentTestiniu()">
            Prideti Nauja Studenta "Test"
        </button>
        <button type="submit" onclick="displaytest()">
            Display
        </button>
        <%--<button class="form-control" type="submit" onclick="displaytest(<c:param name="test" value="${studentlistDB.get(1).getName()}"/>)">--%>
            <%--Prideti Nauja Studenta "Test"--%>
        <%--</button>--%>

    </div>
    <div class="container" style="background-color: #c1deda">
        <table class="table">
            <tr style="border: double">
                <th>id</th>
                <th>course</th>
                <th>name</th>
                <th>surname</th>
                <th>schoolname</th>
                <th>parentinfo</th>
                <th>phone</th>
                <th>email</th>
                <th>moreinfo</th>
                <th>keisti</th>
                <th>trinti</th>
            </tr>
            <c:forEach var="stud" items="${studentlistDB}">
                <tr>
                    <%--<div class="form-group" style="margin-top: 20px">--%>
                        <%--<input class="form-control" type="hidden" name="id" placeholder="Id" value="<c:out value="${stud.getId()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group" style="margin-top: 20px">--%>
                        <%--<input class="form-control" type="hidden" name="name" placeholder="Vardas" value="<c:out value="${stud.getName()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" class="form-control" name="surname" placeholder="Pavardė" value="<c:out value="${stud.getSurname()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" name="schoolname" class="form-control" placeholder="Mokykla" value="<c:out value="${stud.getSchoolname()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" name="parentinfo" class="form-control" placeholder="Tevu informacija" value="<c:out value="${stud.getParentinfo()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" name="phone" class="form-control" placeholder="Telefonas" value="<c:out value="${stud.getPhone()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" name="email" class="form-control" placeholder="El.paštas" value="<c:out value="${stud.getEmail()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" name="course" class="form-control" placeholder="Kursas" value="<c:out value="${stud.getCourse()}"/>">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="hidden" name="moreinfo" class="form-control" placeholder="Papildoma informacija" value="<c:out value="${stud.getMoreinfo()}"/>">--%>
                    <%--</div>--%>

                    <td>${stud.id}</td>
                    <td>${stud.course}</td>
                    <td>${stud.name}</td>
                    <td>${stud.surname}</td>
                    <td>${stud.schoolname}</td>
                    <td>${stud.parentinfo}</td>
                    <td>${stud.phone}</td>
                    <td>${stud.email}</td>
                    <td>${stud.moreinfo}</td>
                    <td>
                        <button class="form-control" name="id" type="submit" value="${stud.id}" onclick="form.action='/updredirect'" formmethod="post"/>
                        keisti
                    </td>
                    <td>
                        <button class="form-control" name="id1" type="submit" value="<c:out value="${stud.id}"/>" onclick="form.action='/delstud'" formmethod="post"/>
                        trinti
                    </td>
                    <td>
                        <button class="form-control" name="id5" type="submit" onclick="addStudentDublicate(<c:out value="${stud.surname}"/>)"/>
                        dublikuoti
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</form>
<script>
    function addStudentTestiniu(){
        $.post("/addstud",
            {
                name: "test",
                surname: "test",
                schoolname: "test",
                parentinfo: "test",
                phone: "test",
                email: "test",
                moreinfo: "test",
                course: "1"
            },
            function(data, status){
                alert("Data: " + data + "\nStatus: " + status);
            });
    }
</script>
<script>
    // ar suveikia
    function displaytest() {
        alert("veikia alert");
    }
</script>
<script>
    function addStudentDublicate(stud) {
        alert(stud + "veikia");
        $.post("/addstud",
            {
                name: stud.id,
                surname: "${stud.getSurname()}",
                schoolname: "${stud.getSchoolname()}",
                parentinfo: "${stud.getParentinfo()}",
                phone: "${stud.getPhone()}",
                email: "${stud.getEmail()}",
                moreinfo: "${stud.getMoreinfo()}",
                course: "${stud.getCourse()}"
            },
            function(data, status){
                alert("Data: " + data + "\nStatus: " + status);
            });
    }
</script>
<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.js"></script>
<script type="text/javascript" src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>
</body>
</html>
