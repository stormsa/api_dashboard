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
        <c:if test="${sessionScope.USER_INFORMATIONS != null}">
            <jsp:include page="template/header.jsp"/>
            <div class="col-md-offset-2" id="page-wrapper">
                <jsp:include page="${partial}"/>
            </div>
        </c:if>
        <c:if test="${sessionScope.USER_INFORMATIONS == null}">
            <div id="page-wrapper">
                <jsp:include page="${partial}"/>
            </div>
        </c:if>
    <!-- Page Content -->
    <div style="display: none" id="loading">
        &nbsp;
        <h1>Chargement</h1>
        <img src="<c:url value='/resources/img/ellipsis.svg'/>"/>
    </div>

</div>
<div class="content"></div>
<div class="push"></div>
<script>
    function getUrl(path) {
        return '<spring:url value="/" />' + path;
    }
    window.res_emoticons = getUrl("resources/SCE/emoticons/");
</script>
</body>
</html>
