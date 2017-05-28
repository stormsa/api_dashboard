<%--
  Created by IntelliJ IDEA.
  User: Vinh
  Date: 11/01/2017
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<div id="meteoDiv" class="col-md-4 meteo">
    <h1 class="titlearea win-type-ellipsis">
        <span class="pagetitle">Meteo En France !</span>
    </h1>
    <div class="search row">
        <select class="chosen" data-placeholder="Choisissez votre ville" onchange="changeVille()">
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
    <div id="zone_meteo" class="row" >
        <div class="col-md-6">
            <span id="ville">Votre Ville</span>
        </div>
        <div class="col-md-6">
            <span id="temperature">Information</span>
            <img id="image" />
        </div>
        <div class="col-md-6">
            <span id="humidite">Humidite</span><br />
        </div>
        <div class="col-md-6">
            <span id="vent">Vent</span>
            <input type="hidden" id="long"/>
            <input type="hidden" id="lat" />
        </div>
    </div>
</div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="<c:url value="/resources/js/map.js" />"></script>
<script src="<c:url value="/resources/js/meteo.js" />"></script>
