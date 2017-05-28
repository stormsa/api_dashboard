<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saziri
  Date: 18/05/2017
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row col-md-10" id="favorites">
    <h2>Trajets favoris</h2>
    <div class="row item">
        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title col-md-10">
                        <a data-toggle="collapse" href="#fav1"><i class="itemAdresse"></i> Paris - Val de fontenay (50 minutes)</a>
                    </h4>
                    <div class="col-md-2">
                        <a href="#"><i class="fa fa-refresh fa-lg"></i></a>
                        <a href="#"><i class="fa fa-remove fa-lg"></i></a>
                    </div>
                </div>
                <div id="fav1" class="panel-collapse collapse">
                    <div class="row col-md-10">
                        <div class="col-md-4">
                            <input id="fav1Departure" type="text" value="Paris" class="form-control" disabled />
                        </div>
                        <div class="col-md-4">
                            <input id="fav1Arrival" type="text" value="Val de fontenay" class="form-control" disabled />
                        </div>
                    </div>
                    <div class="row col-md-12">
                        <div class="col-md-7">
                            <br/>
                            <div class="itinerary">
                                <div id="map" class="map">
                                    <p>Veuillez patienter pendant le chargement de la carte...</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <br/>
                            <div id="map-panel"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row item">
        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title col-md-10">
                        <a data-toggle="collapse" href="#fav2"><i class="itemAdresse"></i> Montparnasse - La defense</a>
                    </h4>
                    <div class="col-md-2">
                        <a href="#"><i class="fa fa-refresh fa-lg"></i></a>
                        <a href="#"><i class="fa fa-remove fa-lg"></i></a>
                    </div>
                </div>
                <div id="fav2" class="panel-collapse collapse">
                    <div class="row col-md-10">
                        <div class="col-md-4">
                            <input id="fav2Departure" type="text" value="Montparnasse" class="form-control" disabled />
                        </div>
                        <div class="col-md-4">
                            <input id="fav2Arrival" type="text" value="La defense" class="form-control" disabled />
                        </div>
                    </div>
                    <div class="row col-md-12">
                        <div class="col-md-7">
                            <br/>
                            <div class="itinerary">
                                <div id="map2" class="map">
                                    <p>Veuillez patienter pendant le chargement de la carte...</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <br/>
                            <div id="map-panel2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/js/map.js"/>"></script>
<script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyDVE-a7qau15SVe4swWTo6VLNc4qqDq4ME&sensor=false&libraries=places&callback=initMapFav"></script>