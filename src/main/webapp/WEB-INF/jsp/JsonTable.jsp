<%--
  Created by IntelliJ IDEA.
  User: Code Academy
  Date: 9/8/2017
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="webjars/jquery/3.2.1/jquery.js"></script>
    <script>
        // apsirasom lentele keturiu daliu, apsirasom JSON formatu penkis komponentus masyvuose
        var computer =
            [
                {"name": "Mackbook", "processor": "Intel I7", "ram": "6GB", "screen": "UHD"},
                {"name": "Lenovo", "processor": "Intel I5", "ram": "8GB", "screen": "HD"},
                {"name": "Samsung", "processor": "Intel I3", "ram": "6GB", "screen": "HD"},
                {"name": "Asus", "processor": "Intel I5", "ram": "3GB", "screen": "UHD"},
                {"name": "Toshiba", "processor": "Intel I6", "ram": "8GB", "screen": "HD"}
            ];
        // JQuerry isiskvieciam, reiksia, kad $ zenklas
        // suformuojam lentele. Document, nes tai bus dokumentas
        $(document).ready(function () {
            // susikuriam tuscia table ir mes ji papildysime. Su appendTo() papildome. #tablediv tai yra divas
            var table = $('<table/>').appendTo($('#tablediv'));
            // su kiekvienu computer duomeniu darysiu. i, computer > eilute, computer komponentas
            $(computer).each(function (i, computer) {
                // kiekviena <tr> kisim i lentele
                $('<tr>').appendTo(table)
                // i kiekviena <tr> dedam <td>, o siu turim keturis. Pridedam .text, kuris yra computer name, processo, ram, screen
                    .append($('<td>').text(computer.name))
                    .append($('<td>').text(computer.processor))
                    .append($('<td>').text(computer.ram))
                    .append($('<td>').text(computer.screen))
            });
        });


        var count = 1;
        $(document).ready(function () {
            $('#tabletest').click(function () {
                $(computer).each(function (i, kompiuteris) {
                    document.getElementById("name" + count).innerHTML = kompiuteris.name;
                    document.getElementById("processor" + count).innerHTML = kompiuteris.processor;
                    document.getElementById("ram" + count).innerHTML = kompiuteris.ram;
                    document.getElementById("screen" + count).innerHTML = kompiuteris.screen;
                    count = count + 1;
                });
            });
        });


    </script>

    <%--JQuerry per ajax JSON formatu siunciam duomenis--%>
    <script>
        function sendj() {
            // siusim JSon tipu
            var divdata =
                {
                    name: $("#textname").val(),
                    processor: $("#textprocessor").val(),
                    ram: $("#textram").val(),
                    screen: $("#textscreen").val()
                };

                // siusim duomenis per AJAX
            $.ajax({
            //kokiu budu siusim
                url:"/test23",
                type: "POST",
                contentType:"application/json; charset=utf-8",
                data: JSON.stringify(divdata), // cia naudojam, kad JSON paverstume i stinga ir taip siunciame
                dataType: "json",
                // success, tai kas bus, kai atliks veiksma
                success: function (data, status) {
                    // per alerta pasirodom, kokius duomenis gavome
                    alert(data.name);
                    document.getElementById("ats1").value = data.name;
                    // arba gal net taip
                    $("#ats2").val(data.processor);

                }
            })
        }
    </script>
    <script>
        // DESTYTOJO UZDUOTIS:
        function uzduotis() {

           var dataForSending=
               {
                "name":"Macbook22222222",
                "processor":"I7*************",
                "ram":"8GB*****",
                "screen":"IPS",
                "antras": {"antras12":"asdfasdf", "antras21":"name3"},
                "trecias":["asdf", "fasd", "fasd", "fasd"],
                "ketvirtas":{"ketvirtas":"pentastekstas"}
            };
           $.ajax({
               url: "/testUzduotis"
               , type: "POST"
               , contentType:"application/json; charset=utf-8"
               , data: JSON.stringify(dataForSending)
               , dataType: "json",
               success: function (data, status) {
                   var resp = data.name;
                   alert(resp);
               }
           })
        }

    </script>

</head>
<body>
<h2>Musu saunioji programa</h2>
<div id="tablediv"></div>

<table id="tabletest">
    <th>
    <td>name</td>
    <td>processor</td>
    <td>ram</td>
    <td>screen</td>
    </th>
    <tr>
        <td id="name1"></td>
        <td id="processor1"></td>
        <td id="ram1"></td>
        <td id="screen1"></td>
    </tr>
    <tr>
        <td id="name2"></td>
        <td id="processor2"></td>
        <td id="ram2"></td>
        <td id="screen2"></td>
    </tr>
    <tr>
        <td id="name3"></td>
        <td id="processor3"></td>
        <td id="ram3"></td>
        <td id="screen3"></td>
    </tr>
    <tr>
        <td id="name4"></td>
        <td id="processor4"></td>
        <td id="ram4"></td>
        <td id="screen4"></td>
    </tr>
    <tr>
        <td id="name5"></td>
        <td id="processor5"></td>
        <td id="ram5"></td>
        <td id="screen5"></td>
    </tr>
</table>

<p id="pp">paspausk mane</p>
<div style="border: #275eda; height: 300px; width: 500px">
    <input id="textname"/>
    <input id="textprocessor"/>
    <input id="textram"/>
    <input id="textscreen"/>
    <button onclick="sendj()">OK</button>
</div>
<input id="ats1"/>
<input id="ats2"/>

<button onclick="uzduotis()">Paleist uzduoti</button>

</body>
</html>
