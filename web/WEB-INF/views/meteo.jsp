<%--
  Created by IntelliJ IDEA.
  User: Vinh
  Date: 11/01/2017
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %><html>
<head>
    <title>meteo</title>
    <script src="<c:url value="/resources/js/jquery/jquery-2.2.3.min.js" />"></script>
    <script src="<c:url value="/resources/js/meteo.js" />"></script>
</head>
<body>

    <h1 class="titlearea win-type-ellipsis">
        <span class="pagetitle">Meteo En France !</span>
    </h1>

<div class="search">
    <select class="chosen" data-placeholder="Choisi votre ville" onchange="changeVille()">
        <option></option>
        <option value="Paris">Paris</option>
        <option value="Le Havre">Le Havre</option>
        <option value="Orleans">Orleans</option>
        <option value="Lyon">Lyon</option>
        <option value="Nice">Nice</option>
        <option value="Nantes">Nantes</option>
        <option value="Bordeaux">Bordeaux</option>
        <option value="Marseille">Marseille</option>
        <option value="Toulouse">Toulouse</option>
        <option value="Rennes">Rennes</option>
        <option value="Reims">Reims</option>
        <option value="Rouen">Rouen</option>
    </select>
</div>
<div id="zone_meteo">
    <span id="ville">Votre Ville</span><br />
    <span id="temperature">Information</span>
    <img id="image" />
    <br />
    <span id="humidite">Humidite</span><br />
    <span id="vent">Vent</span>
    <input type="hidden" id="long"/>
    <input type="hidden" id="lat" />

</div>
</body>
</html>
