<%--
  Created by IntelliJ IDEA.
  User: Code Academy
  Date: 9/4/2017
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
        <input name="description" type="text" placeholder="description">
        <input name="distance" type="number" placeholder="distance">
        <input name="info" type="text" placeholder="info">
        <input name="name" type="text" placeholder="name">
        <input name="radius" type="number" placeholder="radius">
        <input name="temperature" type="number" placeholder="temperature">
        <input value="insert" type="submit" onclick="form.action='/addplanet'" formmethod="post"/>
</form>
</body>
</html>
