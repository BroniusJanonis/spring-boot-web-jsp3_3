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
    <link rel="stylesheet" type="text/css" href="PlanetCss.css">
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css">
    <script src="webjars/jquery/3.2.1/jquery.js"></script>
    <script src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>
    <%--JAVA SCRIPT DEBUG > IntelliJ spaust run>edit configuration> paspaust pliusiuka, susirast Java Script debuger, pasirasyt name pavadinima ir nusirodyt puslapio adresa--%>
    <%--jei keiciasi adresai, kad ir per "/", reikia naujos nuorodos nusistatyt--%>
    <%--googlechrome dar reikia parsisiusti IntelliJ addsa, kad veiktu--%>
    <title>Title</title>
</head>
<body>

    <div class="container">
        <button type="submit" onclick="addnewplanetrow()">
            Prideti Nauja Planeta
        </button>
    </div>

    <div class="container">
        <table class="table-bordered" id="tableplanet">

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
                <th id="th">update</th>
                <th>delete</th>
                <th>prideti planetos satelita</th>
                <th class="save">test should be display:none</th>
            </tr>

                <c:forEach var="plnt" items="${planets}" varStatus="theCount">

            <tr id="tr${theCount.count}">

                <td id="id${theCount.count}">
                    <input name="id" id="idval${theCount.count}" type="hidden" readonly="readonly" value="<c:out value="${plnt.getId()}"/>"/>
                        ${plnt.id}
                </td>
                <td id="name${theCount.count}">
                    <input name="name" id="nameval${theCount.count}" type="hidden" value="<c:out value="${plnt.getName()}"/>"/>
                        ${plnt.name}
                </td>
                <td id="description${theCount.count}">
                    <input name="description" id="descriptionval${theCount.count}" type="hidden" value="<c:out value="${plnt.getDescription()}"/>"/>
                        ${plnt.description}
                </td>
                <td id="info${theCount.count}">
                    <input name="info" id="infoval${theCount.count}" type="hidden" value="<c:out value="${plnt.getInfo()}"/>"/>
                        ${plnt.info}
                </td>
                <td id="distance${theCount.count}">
                    <input name="distance" id="distanceval${theCount.count}" type="hidden" value="<c:out value="${plnt.getDistance()}"/>"/>
                        ${plnt.distance}
                </td>
                <td id="radius${theCount.count}">
                    <input name="radius"  id="radiusval${theCount.count}" type="hidden" value="<c:out value="${plnt.getRadius()}"/>"/>
                        ${plnt.radius}
                </td>
                <td id="temperature${theCount.count}">
                    <input name="temperature" id="temperatureval${theCount.count}" type="hidden" value="<c:out value="${plnt.getTemperature()}"/>"/>
                        ${plnt.temperature}
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td id="tdbtnupsav${theCount.count}" onclick="update(${theCount.count})">
                    <button type="button">
                        update
                    </button>
                </td>
                <td>
                    <button id="btndeleteplnt" type="submit" name="btn" value="<c:out value="${plnt.getId()}"/>"
                            onclick="form.action='/deleteplanet'" formmethod="post">
                        Delete
                    </button>
                </td>
                <td>
                    <button type="submit" name="btn1" value="<c:out value="${plnt.getId()}"/>"
                            onclick="form.action='/addsatellitedirect'" formmethod="post">
                        Prideti Nauja Satelita planetai
                    </button>
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
                <td>${stlt.name}</td>
                <td>${stlt.satelliteinfo}</td>
                <td>${stlt.radius}</td>
                <td></td>
                <td>
                    <button id="btndeletestlt" type="submit" name="btndelsat" value="<c:out value="${stlt.id}"/>" formmethod="post"
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
</body>

<%--UPDATE PER JQUERY PER BODY--%>
<script>
    function updateplanet(val){

        var id = document.getElementById("idval"+val).value;
        var description = document.getElementById("descriptionval"+val).value;
        var distance = document.getElementById("distanceval"+val).value;
        var info = document.getElementById("infoval"+val).value;
        var name = document.getElementById("nameval"+val).value;
        var radius = document.getElementById("radiusval"+val).value;
        var temperature = document.getElementById("temperatureval"+val).value;

        $.post("/updplanetjquerry",
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

<%--UPDATE PER JQUERY PER PARAMETRUS (PER URL)--%>
<script>
    
</script>

<%--UPDATE PER AJAX > DUOMENYS PER PARAMETRUS (PER URL)--%>
<script>
    var postrequest;
    var url = "/updplanetjquerry";

    var id = document.getElementById("idval"+val).value;
    var description = document.getElementById("descriptionval"+val).value;
    var distance = document.getElementById("distanceval"+val).value;
    var info = document.getElementById("infoval"+val).value;
    var name = document.getElementById("nameval"+val).value;
    var radius = document.getElementById("radiusval"+val).value;
    var temperature = document.getElementById("temperatureval"+val).value;
    
    
    var paramaters = "id="+id+"&description="+description+"&distance="+distance+"&info="+info+"&name="+name+"&radius="+radius+"&temperature="+temperature;

    postrequest = window.XMLHttpRequest? new XMLHttpRequest(): new ActiveXObject("Microsoft.XMLHTTP");

    postrequest.onreadystatechange = function () {
        if(postrequest.readyState == 4 && postrequest.status==200){
            var responseFromServer = postrequest.responseText;
            var jsonConvert = JSON.parse(responseFromServer);
        }
    };
    postrequest.open("POST", url+"?"+paramaters, true);
    postrequest.send();
</script>

<%--UPDATE PER AJAX > DUOMENYS PER BODY--%>
<script>
    
</script>

<script>
    function update(val) {

        // <th>
        document.getElementById("th").outerHTML = "<th id='thtemp'>save</th>";

        // <td>
    var id = document.getElementById("id"+val);
    var description = document.getElementById("description"+val);
    var distance = document.getElementById("distance"+val);
    var info = document.getElementById("info"+val);
    var name = document.getElementById("name"+val);
    var radius = document.getElementById("radius"+val);
    var temperature = document.getElementById("temperature"+val);
        
    
    // innerText of <td>
        var idtxt = id.innerText;
        var descriptiontxt = description.innerText;
        var distancetxt = distance.innerText;
        var infotxt = info.innerText;
        var nametxt = name.innerText;
        var radiustxt = radius.innerText;
        var temperaturetxt = temperature.innerText;


        // change outerHTML <td> to new <td> with <input>
        // nauji id temporary, nes bus kiti kintamieji (musu pakeisti ir modifikuoti)
        id.outerHTML = "<td id='idtemp"+val+"'><input name='id' id='idval"+val+"' class='input' type='number' readonly='readonly' value='"+idtxt+"'/></td>";
        description.outerHTML = "<td id='descriptiontemp"+val+"'><input name='description' id='descriptionval"+val+"' class='input' type='text' value='"+descriptiontxt+"'/></td>";
        distance.outerHTML = "<td id='distancetemp"+val+"'><input name='distance' id='distanceval"+val+"' class='input' type='number' value='"+distancetxt+"'/></td>";
        info.outerHTML = "<td id='infotemp"+val+"'><input name='info' id='infoval"+val+"' class='input' type='text' value='"+infotxt+"'/></td>";
        name.outerHTML = "<td id='nametemp"+val+"'><input name='name' id='nameval"+val+"' class='input' type='text' value='"+nametxt+"'/></td>";
        radius.outerHTML = "<td id='radiustemp"+val+"'><input name='radius' id='radiusval"+val+"' class='input' type='number' value='"+radiustxt+"'/></td>";
        temperature.outerHTML = "<td id='temperaturetemp"+val+"'><input name='temperatureval' id='temperatureval"+val+"' class='input' type='number' value='"+temperaturetxt+"'/></td>";


        // <td> buttonsave
        var btnsave = document.getElementById("tdbtnupsav"+val).outerHTML = '<td id="tdbtntemp'+val+'" onclick="save('+val+'); updateplanet('+val+')"><button type= "button">save</button></td>';
    }
</script>

<script>
    function save(val) {

        // <th>
        var th = document.getElementById("thtemp").outerHTML = "<th id='th'>update</th>";

        // <td>
        var id = document.getElementById("idtemp"+val);
        var description = document.getElementById("descriptiontemp"+val);
        var distance = document.getElementById("distancetemp"+val);
        var info = document.getElementById("infotemp"+val);
        var name = document.getElementById("nametemp"+val);
        var radius = document.getElementById("radiustemp"+val);
        var temperature = document.getElementById("temperaturetemp"+val);


        // innerText of <input>
        var idtxt = document.getElementById("idval"+val).value;
        var descriptiontxt = document.getElementById("descriptionval"+val).value;
        var distancetxt = document.getElementById("distanceval"+val).value;
        var infotxt = document.getElementById("infoval"+val).value;
        var nametxt = document.getElementById("nameval"+val).value;
        var radiustxt = document.getElementById("radiusval"+val).value;
        var temperaturetxt = document.getElementById("temperatureval"+val).value;


        // change outerHTML <td> to new <td> with line
        // griztam nuo temporary kintamuju prie pirminiu kintamuju
        id.outerHTML = "<td id='id"+val+"'><input name='id' id='idval"+val+"' type='hidden' readonly='readonly' value='"+idtxt+"'/>"+idtxt+"</td>";
        description.outerHTML = "<td id='description"+val+"'><input name='description' id='descriptionval"+val+"' type='hidden' value='"+descriptiontxt+"'/>"+descriptiontxt+"</td>";
        distance.outerHTML = "<td id='distance"+val+"'><input name='distance' id='distanceval"+val+"' type='hidden' value='"+distancetxt+"'/>"+distancetxt+"</td>";
        info.outerHTML = "<td id='info"+val+"'><input name='info' id='infoval"+val+"' type='hidden' value='"+infotxt+"'/>"+infotxt+"</td>";
        name.outerHTML = "<td id='name"+val+"'><input name='name' id='nameval"+val+"' type='hidden' value='"+nametxt+"'/>"+nametxt+"</td>";
        radius.outerHTML = "<td id='radius"+val+"'><input name='radius' id='radiusval"+val+"' type='hidden' value='"+radiustxt+"'/>"+radiustxt+"</td>";
        temperature.outerHTML = "<td id='temperature"+val+"'><input name='temperature' id='temperatureval"+val+"' type='hidden' value='"+temperaturetxt+"'/>"+temperaturetxt+"</td>";

        // <td> btnsave
        var btnsave = document.getElementById("tdbtntemp"+val).outerHTML = '<td id="tdbtnupsav'+val+'" onclick="update('+val+')"><button type= "button">update</button></td>';
    }
</script>

<%--NEPABAIGTAS--%>
<script>
    function addnewplanetrow() {
        var table = document.getElementById("tableplanet");
        var table_len = (table.rows.length)-1;
        alert(table_len);
    }
</script>

</html>
