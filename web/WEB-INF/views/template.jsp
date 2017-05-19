<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saziri
  Date: 06/09/2016
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>api_dashboard</title>
    <!-- meta -->

    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/Bootstrap/bootstrap.css'/>">
    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/font-awesome/css/font-awesome.min.css'/>" />
    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/local.css'/>" />

    <script type="text/javascript" src="<spring:url value='/resources/js/jquery/jquery-1.10.2.min.js'/>"></script>
    <script type="text/javascript" src="<spring:url value='/resources/js/Bootstrap/bootstrap.js'/>"></script>


</head>
<body>
<div class="wrapper">

    <c:choose>
        <c:when test="${sessionScope.USER_INFORMATIONS != null}">
            <jsp:include page="template/header.jsp"/>
            <div class="col-md-offset-2 col-md-10" id="page-wrapper">
                <!-- If page is a configuration api, so if it's not index
                    display enable / disable api -->
                <c:if test="${requestScope['javax.servlet.forward.request_uri'] != '/index'}">
                    <div class="row">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" checked data-toggle="toggle" data-on="Activer" data-off="Désactiver" data-onstyle="primary" data-offstyle="danger">
                                Activer / Desactiver l'api sur le dashboard
                            </label>
                        </div>
                    </div>
                </c:if>

                <jsp:include page="${partial}"/>
            </div>
        </c:when>
        <c:otherwise>
            <div id="page-wrapper">
                <jsp:include page="${partial}"/>
            </div>
        </c:otherwise>
    </c:choose>
    <!-- Page Content -->
    <div class="loading">
        <h4>Chargement</h4>
        <div class="loader">

        </div>
    </div>
    <div id="loader" style="display: none"></div>


</div>
<div class="content"></div>
<div class="push"></div>
<script>
    function getUrl(path) {
        return '<spring:url value="/" />' + path;
    }
    /*
    $('#toggleApi').change(function() {
            // Send state of api for this user to the server
            var url =  +"/toggle";
            toggleApi(url, $(this).prop('checked'));
    })
    */
    function toggleApi(url, checked) {
        var url = '<spring:url value="/manage/editeur/publish"/>';
        var data = {'enabled': checked};
        $.ajax({
            cache: false,
            url: url,
            type: "POST",
            data: data,
            beforeSend: function (xhr) {

            },
            success: function (data, textStatus, jqXHR) {
                if(checked){
                    console.log("Api validé!");
                }else{
                    console.log("Api désactivée!");
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log(thrownError);
            }
        });
    }

</script>
<script>

</script>
</body>
</html>
