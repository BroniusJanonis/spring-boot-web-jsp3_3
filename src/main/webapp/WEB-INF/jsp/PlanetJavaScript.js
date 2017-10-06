function diblicate(val){

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
    id.outerHTML = "<td id='idtemp"+val+"'><input name='id' id='id' type='number' readonly='readonly' value='"+idtxt+"'/></td>";
    description.outerHTML = "<td id='descriptiontemp"+val+"'><input name='description' id='description' type='text' value='"+descriptiontxt+"'/></td>";
    distance.outerHTML = "<td id='distancetemp"+val+"'><input name='distance' id='distance' type='number' value='"+distancetxt+"'/></td>";
    info.outerHTML = "<td id='infotemp"+val+"'><input name='info' id='info' type='text' value='"+infotxt+"'/></td>";
    name.outerHTML = "<td id='nametemp"+val+"'><input name='name' id='name' type='text' value='"+nametxt+"'/></td>";
    radius.outerHTML = "<td id='radiustemp"+val+"'><input name='radius' id='radius' type='number' value='"+radiustxt+"'/></td>";
    temperature.outerHTML = "<td id='temperaturetemp"+val+"'><input name='temperature' id='temperature' type='number' value='"+temperaturetxt+"'/></td>";


    // <td> buttonsave
    var btnsave = document.getElementById("tdbtnupsav"+val).outerHTML = '<td id="tdbtntemp'+val+'" onclick="save('+val+')"><button type= "button">save</button></td>';

}


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
    var idtxt = document.getElementById("id").value;
    var descriptiontxt = document.getElementById("description").value;
    var distancetxt = document.getElementById("distance").value;
    var infotxt = document.getElementById("info").value;
    var nametxt = document.getElementById("name").value;
    var radiustxt = document.getElementById("radius").value;
    var temperaturetxt = document.getElementById("temperature").value;


    // change outerHTML <td> to new <td> with <input>
    // nauji id temporary, nes bus kiti kintamieji (musu pakeisti ir modifikuoti)
    id.outerHTML = "<td id='id"+val+"'><input name='id' type='hidden' readonly='readonly' value='"+idtxt+"'/>"+idtxt+"</td>";
    description.outerHTML = "<td id='description"+val+"'><input name='description' type='hidden' value='"+descriptiontxt+"'/>"+descriptiontxt+"</td>";
    distance.outerHTML = "<td id='distance"+val+"'><input name='distance' type='hidden' value='"+distancetxt+"'/>"+distancetxt+"</td>";
    info.outerHTML = "<td id='info"+val+"'><input name='info' type='hidden' value='"+infotxt+"'/>"+infotxt+"</td>";
    name.outerHTML = "<td id='name"+val+"'><input name='name' type='hidden' value='"+nametxt+"'/>"+nametxt+"</td>";
    radius.outerHTML = "<td id='radius"+val+"'><input name='radius' type='hidden' value='"+radiustxt+"'/>"+radiustxt+"</td>";
    temperature.outerHTML = "<td id='temperature"+val+"'><input name='temperature' type='hidden' value='"+temperaturetxt+"'/>"+temperaturetxt+"</td>";

    // <td> btnupdate
    var btnupdate = document.getElementById("tdbtntemp"+val).outerHTML = '<td id="tdbtnupsav'+val+'" onclick="update('+val+')"><button type= "button">update</button></td>';

}