<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>speler toevoegen</title>
</head>
<body class="body">
<div class="bg"></div>
<header>
    <h1>ADD PLAYER</h1>
</header>
<nav>
    <ul>
        <li><a href="index.html" >HOME</a></li>
        <li><a href="add.jsp" class="kleur">ADD PLAYER</a></li>
        <li><a href="servlet?task=overview">PLAYER LIST</a></li>
        <li><a href="find.html" >FIND PLAYER</a></li>
    </ul>
</nav>
<article>
    <c:if test="${not empty errors}">
        <div class="error">
            <ul>
                <c:forEach items="${errors}" var="error">
                    <li><p>${error}</p></li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
</article>
<article>
    <h2>ADD PLAYER</h2>
    <form action="servlet?task=add" method="POST">
        <fieldset class="formulier">
            <legend>speler toevoegen</legend>
            <label for="naam">naam :</label>
            <input type="text" name="naam" id="naam"
                   value="${naamIsSafe}">
            <label for="nationaliteit">nationaliteit :</label>
            <input type="text" name="nationaliteit" id="nationaliteit"
                   value="${nationaliteitIsSafe}">
            <label for="team">team :</label>
            <input type="text" name="team" id="team"
                   value="${teamIsSafe}">
            <input type="submit" value="ADD PLAYER" id="submit">
        </fieldset>
        <p class="left">Alle velden zijn verplicht.</p>
    </form>
</article>
</body>
</html>