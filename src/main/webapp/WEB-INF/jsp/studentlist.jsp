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

<html>
<head>
    <title>Studentu sarasas</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css">
</head>
<body>
<div class="container", style="background-color: #c1deda">
    <h2>Studentu sarasas</h2>
    <br>
</div>
<div class="container", style="background-color: #c1deda ">
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
        </tr>
        <c:forEach var="stud" items="${studentlist}">
            <tr>
                <td>${stud.id}</td>
                <td>${stud.course}</td>
                <td>${stud.name}</td>
                <td>${stud.surname}</td>
                <td>${stud.schoolname}</td>
                <td>${stud.parentinfo}</td>
                <td>${stud.phone}</td>
                <td>${stud.email}</td>
                <td>${stud.moreinfo}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<script type="text/javascript" src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>
<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.js"></script>
</body>
</html>
