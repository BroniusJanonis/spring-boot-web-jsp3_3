<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: Dainius--%>
  <%--Date: 2017.08.30--%>
  <%--Time: 10:17--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page import="demo.studentsDemo.model.Student" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>

<%--<html>--%>
<%--<head>--%>
    <%--<title>Studentu sarasas</title>--%>
    <%--<link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container" style="background-color: #c1deda">--%>
    <%--<h2>Studentu sarasas</h2>--%>
    <%--<br>--%>
<%--</div>--%>


<%--<form method="get" action="/studentajaxtest" name="form1">--%>

    <%--<div class="container">--%>
        <%--<button type="submit" onclick="form.action='/addstudredirect'" formmethod="post">--%>
            <%--Prideti Nauja Studenta--%>
        <%--</button>--%>
        <%--<button type="submit" onclick="displaytest()">--%>
            <%--Prideti Nauja Studenta--%>
        <%--</button>--%>
    <%--</div>--%>

    <%--<div class="container" style="background-color: #c1deda">--%>
        <%--<table class="table">--%>
            <%--<tr style="border: double">--%>
                <%--<th>id</th>--%>
                <%--<th>course</th>--%>
                <%--<th>name</th>--%>
                <%--<th>surname</th>--%>
                <%--<th>schoolname</th>--%>
                <%--<th>parentinfo</th>--%>
                <%--<th>phone</th>--%>
                <%--<th>email</th>--%>
                <%--<th>moreinfo</th>--%>
                <%--<th>keisti</th>--%>
                <%--<th>trinti</th>--%>
            <%--</tr>--%>
            <%--<c:forEach var="stud" items="${studentlistDB}">--%>
                <%--<tr>--%>
<%--.--%>
                    <%--<c:set var = "btn" scope = "page" value = "${true}"/>--%>

                    <%--<c:if test="${btn == true}">--%>
                        <%--<td>${stud.id}</td>--%>
                        <%--<td>${stud.course}</td>--%>
                        <%--<td>${stud.name}</td>--%>
                        <%--<td>${stud.surname}</td>--%>
                        <%--<td>${stud.schoolname}</td>--%>
                        <%--<td>${stud.parentinfo}</td>--%>
                        <%--<td>${stud.phone}</td>--%>
                        <%--<td>${stud.email}</td>--%>
                        <%--<td>${stud.moreinfo}</td>--%>
                        <%--<td>--%>
                            <%--<button class="form-control" type="submit"onclick=""/>--%>
                            <%--keisti--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<button class="form-control" name="id1" type="submit" value="<c:out value="${stud.id}"/>" onclick="form.action='/delstud'" formmethod="post"/>--%>
                            <%--trinti--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<button class="form-control" name="id5" type="submit" onclick="addStudentDublicate(<c:out value="${stud.surname}"/>)"/>--%>
                            <%--dublikuoti--%>
                        <%--</td>--%>
                    <%--</c:if>--%>

                    <%--<c:if test="${btn == false}">--%>
                        <%--<div class="form-group" style="margin-top: 20px">--%>
                        <%--<input class="form-control" type="number" name="id" placeholder="Id" value="<c:out value="${stud.getId()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group" style="margin-top: 20px">--%>
                        <%--<input class="form-control" type="text" name="name" placeholder="Vardas" value="<c:out value="${stud.getName()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" class="form-control" name="surname" placeholder="Pavardė" value="<c:out value="${stud.getSurname()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" name="schoolname" class="form-control" placeholder="Mokykla" value="<c:out value="${stud.getSchoolname()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" name="parentinfo" class="form-control" placeholder="Tevu informacija" value="<c:out value="${stud.getParentinfo()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" name="phone" class="form-control" placeholder="Telefonas" value="<c:out value="${stud.getPhone()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" name="email" class="form-control" placeholder="El.paštas" value="<c:out value="${stud.getEmail()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" name="course" class="form-control" placeholder="Kursas" value="<c:out value="${stud.getCourse()}"/>">--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<input type="text" name="moreinfo" class="form-control" placeholder="Papildoma informacija" value="<c:out value="${stud.getMoreinfo()}"/>">--%>
                        <%--</div>--%>
                        <%--<td>--%>
                            <%--<button class="form-control" name="id" type="submit" value="${stud.id}" onclick="form.action='/updredirect'" formmethod="post"/>--%>
                            <%--keisti--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<button class="form-control" name="id1" type="submit" value="<c:out value="${stud.id}"/>" onclick="form.action='/delstud'" formmethod="post"/>--%>
                            <%--trinti--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<button class="form-control" name="id5" type="submit" onclick="addStudentDublicate(<c:out value="${stud.surname}"/>)"/>--%>
                            <%--dublikuoti--%>
                        <%--</td>--%>
                    <%--</c:if>--%>

                <%--</tr>--%>
            <%--</c:forEach>--%>
        <%--</table>--%>
    <%--</div>--%>
<%--</form>--%>

<%--<script>--%>
    <%--function addStudentTestiniu(){--%>
        <%--$.post("/addstud",--%>
            <%--{--%>
                <%--name: "test",--%>
                <%--surname: "test",--%>
                <%--schoolname: "test",--%>
                <%--parentinfo: "test",--%>
                <%--phone: "test",--%>
                <%--email: "test",--%>
                <%--moreinfo: "test",--%>
                <%--course: "1"--%>
            <%--},--%>
            <%--function(data, status){--%>
                <%--alert("Data: " + data + "\nStatus: " + status);--%>
            <%--});--%>
    <%--}--%>
<%--</script>--%>

<%--<script>--%>
    <%--// ar suveikia--%>
    <%--function displaytest() {--%>
        <%--alert("veikia alert");--%>
    <%--}--%>
<%--</script>--%>

<%--<script>--%>
    <%--function addStudentDublicate(stud) {--%>
        <%--alert(stud + "veikia");--%>
        <%--$.post("/addstud",--%>
            <%--{--%>
                <%--name: stud.id,--%>
                <%--surname: "${stud.getSurname()}",--%>
                <%--schoolname: "${stud.getSchoolname()}",--%>
                <%--parentinfo: "${stud.getParentinfo()}",--%>
                <%--phone: "${stud.getPhone()}",--%>
                <%--email: "${stud.getEmail()}",--%>
                <%--moreinfo: "${stud.getMoreinfo()}",--%>
                <%--course: "${stud.getCourse()}"--%>
            <%--},--%>
            <%--function(data, status){--%>
                <%--alert("Data: " + data + "\nStatus: " + status);--%>
            <%--});--%>
    <%--}--%>
<%--</script>--%>

<%--<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.js"></script>--%>
<%--<script type="text/javascript" src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%--
  Created by IntelliJ IDEA.
  User: Code Academy
  Date: 9/4/2017
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>

    <div class="container">
        <button type="submit" onclick="form.action='/addplanetredirect'" formmethod="post">
            Prideti Nauja Planeta
        </button>
    </div>

    <div class="container">
        <table class="table-bordered">

            <tr>
                <th>id</th>
                <th>desribtion</th>
                <th>distance</th>
                <th>info</th>
                <th>name</th>
                <th>radius</th>
                <th>temperature</th>
                <th>sattelite id</th>
                <th>sattelite info</th>
                <th>sattelite name</th>
                <th>sattelite radius</th>
                <th>update</th>
                <th>delete</th>
                <th>prideti planetos satelita</th>
            </tr>


            <tr>
                <c:forEach var="plnt" items="${planets}" varStatus="theCount">

                <input id="linehidden${theCount.count}" name="linehidden${theCount.count}" type="hidden" value="hidden"/>
                    <%--<c:set var="linehidden${theCount.count}" value="${BARCODE[theCount.count]}" />--%>
                    <%--<c:if test="">--%>
                    <%----%>
                    <%--</c:if>--%>
                    <%----%>
                    <%--<c:if test="">--%>
                    <%----%>
                    <%--</c:if>--%>

                <input name="id" id="id${theCount.count}" type="hidden" readonly="readonly" value="<c:out value="${plnt.getId()}"/>"/>
                <td type="${linehidden}">${plnt.id}</td>
                <input name="description" id="description${theCount.count}" type="hidden" value="<c:out value="${plnt.getDescription()}"/>"/>
                <td type="${linehidden}">${plnt.description}</td>
                <input name="distance" id="distance${theCount.count}" type="hidden" value="<c:out value="${plnt.getDistance()}"/>"/>
                <td type="${linehidden}">${plnt.distance}</td>
                <input name="info" id="info${theCount.count}" type="hidden" value="<c:out value="${plnt.getInfo()}"/>"/>
                <td type="${linehidden}">${plnt.info}</td>
                <input name="name" id="name${theCount.count}" type="hidden" value="<c:out value="${plnt.getName()}"/>"/>
                <td type="${linehidden}">${plnt.name}</td>
                <input name="radius" id="radius${theCount.count}" type="hidden" value="<c:out value="${plnt.getRadius()}"/>"/>
                <td type="${linehidden}">${plnt.radius}</td>
                <input name="temperature" id="temperature${theCount.count}" type="hidden" value="<c:out value="${plnt.getTemperature()}"/>"/>
                <td type="${linehidden}">${plnt.temperature}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <button type="submit" onclick="changeView(${theCount.count})">Change View</button>
                </td>
                <td>
                    <button hidden="hidden" type="submit" onclick="update(${theCount.count})">Dublicate</button>
                </td>
                <td>
                    <button type="submit" name="btn" value="<c:out value="${plnt.getId()}"/>"
                            onclick="form.action='/deleteplanet'" formmethod="post">Delete</button>
                </td>
                <td>
                    <button type="submit" name="btn1" value="<c:out value="${plnt.getId()}"/>"
                            onclick="form.action='/addsatellitedirect'" formmethod="post">Prideti Nauja Satelita planetai</button>
                </td>
            </tr>

            <tr>
                <c:forEach var="stlt" items="${plnt.getSatellites()}">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${stlt.id}</td>
                <td>${stlt.satelliteinfo}</td>
                <td>${stlt.name}</td>
                <td>${stlt.radius}</td>
                <td></td>
                <td>
                    <button type="submit" name="btndelsat" value="<c:out value="${stlt.id}"/>" formmethod="post"
                            formaction="/deletesatellite">
                        delete
                    </button>
                </td>
                <td></td>
            </tr>
            </c:forEach>
            </c:forEach>
        </table>
    </div>
</form>
</body>

<script>
    function update(val){

        var id = document.getElementById("id"+val).value;
        var description = document.getElementById("description"+val).value;
        var distance = document.getElementById("distance"+val).value;
        var info = document.getElementById("info"+val).value;
        var name = document.getElementById("name"+val).value;
        var radius = document.getElementById("radius"+val).value;
        var temperature = document.getElementById("temperature"+val).value;

        $.post("/addplanet",
            {
                id: id,
                description: description,
                distance: distance,
                info: info,
                name: name,
                radius: radius,
                temperature: temperature
            },
            function(data, status){
                alert("Data: " + data + "\nStatus: " + status);
            });
    }
</script>

<script>
    function add(val){

        var id = document.getElementById("id"+val).value;
        var description = document.getElementById("description"+val).value;
        var distance = document.getElementById("distance"+val).value;
        var info = document.getElementById("info"+val).value;
        var name = document.getElementById("name"+val).value;
        var radius = document.getElementById("radius"+val).value;
        var temperature = document.getElementById("temperature"+val).value;

        $.post("/addplanet",
            {
                id: id,
                description: description,
                distance: distance,
                info: info,
                name: name,
                radius: radius,
                temperature: temperature
            },
            function(data, status){
                alert("Data: " + data + "\nStatus: " + status);
            });
    }
</script>

<script>
    function changeView(val) {
        var test = document.getElementById("linehidden"+val).value = "";
        alert(test);
    }
</script>

<script src="webjars/jquery/3.2.1/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css">
<script src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>
</html>
