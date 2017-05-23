<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<div id="ratp">
  <div class="row col-md-10">
    <h3>Lignes de métro</h3>
    <div id="metro">

    </div>
  </div>
  <div class="row col-md-12" id="choiceStation" style="display: none">
    <div class="col-md-3">
      <h3>Stations</h3>
      <select class="selectpicker form-control" id="stations">

      </select>
    </div>
    <div class="col-md-3">
      <h3>Destinations</h3>
      <select class="selectpicker form-control" id="destinations">

      </select>
    </div>
    <div class="col-md-2">
      <h3>Favori</h3>
      <button type="button" class="form-control btn btn-info btn-circle"><i class="glyphicon glyphicon-star"></i></button>
    </div>

    <div class="row col-md-10 espacement" id="ligne">

    </div>
    <div class="row col-md-8 espacement">
      <h3>Horaires</h3>
      <div class="row">
        <div class="col-md-8">
          <b>Destination</b>
        </div>
        <div class="col-md-3">
          <b>Temps</b>
        </div>
      </div>
      <div id="horaires">

      </div>
    </div>
  </div>

</div>
<script src="<c:url value="/resources/js/ratp/main.js" />"></script>

