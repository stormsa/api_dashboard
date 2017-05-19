<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<div id="ratp">
  <div class="row">
    <h3>Lignes de métro</h3>
    <div id="metro">

    </div>
  </div>
  <div class="col-md-5">
    <h3>Stations</h3>
    <select class="selectpicker" id="stations">

    </select>
  </div>
  <div class="row col-md-12">

    <div class="col-md-6">
      <h3>Destinations</h3>
      <select class="selectpicker" id="destinations">

      </select>
    </div>
    <div class="col-md-6">
      <h3>Mettre en favori </h3>
      <button type="button" class="btn btn-info btn-circle btn-lg"><i class="glyphicon glyphicon-star"></i></button>
    </div>

  </div>
  <div class="row col-md-12">
    <h3>Horaires</h3>
    <ul class="list-group" id="horaires">

    </ul>
  </div>
  <div class="row">
    <div class="col-md-6">
      <h3>Trafic en direct</h3>
      <ul class="list-group" id="trafic">

      </ul>
    </div>
  </div>
</div>
<script src="<c:url value="/resources/js/ratp/main.js" />"></script>

