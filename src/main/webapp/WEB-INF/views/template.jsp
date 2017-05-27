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
    <link rel="apple-touch-icon" sizes="57x57" href="/resources/img/favIcon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/img/favIcon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/resources/img/favIcon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/img/favIcon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/resources/img/favIcon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/resources/img/favIcon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/resources/img/favIcon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/resources/img/favIcon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/resources/img/favIcon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="/resources/img/favIcon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/img/favIcon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/resources/img/favIcon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/img/favIcon/favicon-16x16.png">
    <link rel="manifest" href="/resources/img/favIcon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/resources/img/favIcon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

</head>
<body>
<div class="wrapper">

    <c:choose>
        <c:when test="${sessionScope.USER_INFORMATIONS != null}">
            <jsp:include page="template/header.jsp"/>
            <div class="col-md-offset-2 col-md-10" id="page-wrapper">
                <!-- If page is a configuration api, so if it's not index
                    display enable / disable api -->
                <c:set value="${requestScope['javax.servlet.forward.request_uri']}" var="url"></c:set>
                <c:if test="${url != '/index' && url != '/user/profil'}">
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
    <div class="loading" style="display: none">
        <h4>Chargement</h4>
        <div class="loader">

        </div>
    </div>


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
