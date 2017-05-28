<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saziri
  Date: 18/05/2017
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="row col-md-10">
    <div class="col-md-3">
        <h3>Depart</h3>
            <input id="departure" class="form-control" placeholder="Adresse de départ"
                   onFocus="geolocate()" type="text"></input>
    </div>
    <div class="col-md-3">
        <h3>Arrivée</h3>
            <input id="arrival" class="form-control" placeholder="Adresse d'arrivée"
                   onFocus="geolocate()" type="text"></input>
    </div>
    <div class="col-md-2">
        <h3> Resultat</h3>
        <input type="button" class="form-control btn btn-success" id="calcIti" value="Calculer"/>
    </div>
    <div class="col-md-2">
        <h3>Favori</h3>
        <button type="button" class="form-control btn btn-info btn-circle"><i class="glyphicon glyphicon-star"></i></button>
    </div>
</div>
<div class="row">
    <div class="col-sm-5">
        <br/>
        <div id="itinerary">
            <div id="map">
                <p>Veuillez patienter pendant le chargement de la carte...</p>
            </div>
        </div>
    </div>
    <div class="col-md-5">
        <br/>
        <div id="map-panel"></div>
    </div>
</div>
<script src="<c:url value="/resources/js/map.js"/>"></script>
<script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyDVE-a7qau15SVe4swWTo6VLNc4qqDq4ME&sensor=false&libraries=places&callback=initMap"></script>