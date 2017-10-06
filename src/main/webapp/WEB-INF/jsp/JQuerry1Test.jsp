<%--
  Created by IntelliJ IDEA.
  User: Code Academy
  Date: 9/5/2017
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="webjars/jquery/3.2.1/jquery.js"></script>
    <script src="webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.js"></script>
    <link rel="stylesheet" src="webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.css"/>
    <%--<script>--%>
    <%--// apsirasom visa JQuerry--%>
    <%--// docyument, nes visas dokumentas. Ready(), kad laukia, pasiruoses dokumentas--%>
    <%--$(document).ready(function () {--%>
    <%--//selektor, tai koki elementa, mes pasirinksim. Pasirenkam button, click(), kad paspaudus, kazkas nutiktu, tuomet funkcija kazkokia--%>
    <%--$("button").click(function () {--%>
    <%--//cia kaip selektas vyksta--%>
    <%--//kai paspaustas, tai kazkoki veiksma atlieka. cia visus paragrafus uzgidinam--%>
    <%--//cia kvieciames pagal komponeta--%>
<%--//    $("p").hide();--%>
    <%--// galime kviestis pagal i--%>
    <%--$('#p1').hide();--%>
    <%--// pagal klases--%>
<%--//    $('.div').hide();--%>
    <%--// vel per komponenta--%>
<%--//    $('h2').hide();--%>
    <%--})--%>
    <%--})--%>
    <%--</script>--%>

    <%--uzvedus pele alerta duoda--%>
    <%--<script>--%>
    <%--$(document).ready(function () {--%>
    <%--$("#p1").mouseover(function () {--%>
    <%--alert("suveike");--%>
    <%--})--%>
    <%--})--%>
    <%--</script>--%>

    <%--uzejus pakeicia style--%>
    <%--<script>--%>
    <%--$(document).ready(function () {--%>
    <%--$("#div2").mouseup(function () {--%>
    <%--$("#div2").addClass("testuoti12");--%>
    <%--})--%>
    <%--})--%>
    <%--</script>--%>

    <%--pasislenka zalias langas < NEVEIKIA--%>
    <%--<script>--%>
        <%--$(document).ready(function () {--%>
            <%--$("#p1").mouseover(function () {--%>
                <%--$("#div2").animated({width: '800px'});--%>
            <%--})--%>
        <%--})--%>
    <%--</script>--%>

    <%--uzkrauna faila--%>
    <%--veiks, bet reikia leist idejus i jsp, nes .txt failu dar negaudo, dar kolkas konfiguracijos nesimokinom--%>
    <%--<script>--%>
        <%--$(document).ready(function () {--%>
            <%--${"button"}.click(function () {--%>
<%--//                sita nuoroda alia turejo .txt faila paimt, bet nepima--%>
                <%--$("#div2").load("file:///C:/Users/Code Academy/IdeaProjects/spring-boot-web-jsp3_3-Ingos/src/main/webapp/WEB-INF/jsp/text.txt");--%>
            <%--})--%>
        <%--})--%>
    <%--</script>--%>

    <%--apsirasom stiliu, bet galim ir kitam faile--%>
    <%--<style>--%>
    <%--.testuoti12{--%>
    <%--height: 250px;width: 350px; background-color: #338cda--%>
    <%--}--%>
    <%--</style>--%>

    <title> Title </title>
</head>
<body>

<h2> tekstas h2 </h2>
<p> tekstas vienas </p>
<p> tekstas du </p>
<p> tekstas trecias </p>
<button> paspausk mane</button>

<p id="p1"> Tekstas Tekstas Tekstas </p>

<div id="div2" class="div">
    <p> dive tekstas </p>
</div>
</body>
</html>
