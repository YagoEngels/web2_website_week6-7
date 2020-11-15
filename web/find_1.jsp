<%@ page import="domain.database.DatabankenPlayers" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.model.Player" %><%--
  Created by IntelliJ IDEA.
  User: PC001
  Date: 10-10-2020
  Time: 00:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>player database</title>
</head>
<body class="body">
<div class="bg"></div>
<header>
    <h1>DATABASE</h1>
</header>
<nav>
    <ul>
        <li><a href="index.html" >HOME</a></li>
        <li><a href="add.jsp">ADD PLAYER</a></li>
        <li><a href="servlet?task=overview">PLAYER LIST</a></li>
        <li><a href="find.html" class="kleur">FIND PLAYER</a></li>
    </ul>
</nav>
<article>
    <h2> DATABASE WORLDS</h2>
    <a class="find" href="find.jsp">find a player by name</a>

    <p>${p1}</p>
    <p>${p2}</p>
</article>
</body>
</html>
