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
    <script src="webjars/jquery/3.2.1/jquery.js"></script>
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
                <td id="line${theCount.count}">${plnt.id}</td>
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
                    <button type="submit" id="btnviewchange" value="<c:out value="${theCount.count}"/> ">Change View</button>
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

<script>
    $(document).ready(function () {
        $("#btnviewchange").onclick(function () {
//            var btnval = $(this).attr("value");
            $("#line1").hide();
        })
    })
</script>

<%--<script>--%>
    <%--$(document).ready(function () {--%>
        <%--$("#btnviewchange").click(function () {--%>
            <%--$('td').hide();--%>
        <%--})--%>
    <%--})--%>
<%--</script>--%>
<script src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>
<link rel="stylesheet" src="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css"/>
</html>
