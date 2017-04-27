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

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
    <script src="<c:url value="/resources/js/jquery/jquery-2.2.3.min.js" />"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

</head>
<body>
<div class="wrapper">
        <c:if test="${sessionScope.USER_INFORMATIONS != null}">
            <jsp:include page="../../../../api_dashboard-develop/web/WEB-INF/views/template/header.jsp"/>
        </c:if>
    <!-- Page Content -->
    <div style="display: none" id="loading">
        &nbsp;
        <h1>Chargement</h1>
        <img src="<c:url value='/resources/img/ellipsis.svg'/>"/>
    </div>
    <jsp:include page="${partial}"/>
</div>
<div class="content"></div>
<div class="push"></div>
<div>
    <button id="chevron" onclick="window.location='#actionBar';">
        <img src="<c:url value='/resources/img/chevron-up.svg'/>"/>
    </button>
</div>
<script src="<spring:url value='/resources/js/jquery.prettyPhoto.js'/>"></script>
<script src="<spring:url value='/resources/js/listingClient.js'/>"></script>
<script>
    function getUrl(path) {
        return '<spring:url value="/" />' + path;
    }
    function $_GET(param) {
        var vars = {};
        window.location.href.replace(location.hash, '').replace(
            /[?&]+([^=&]+)=?([^&]*)?/gi, // regexp
            function (m, key, value) { // callback
                vars[key] = value !== undefined ? value : '';
            }
        );

        if (param) {
            return vars[param] ? vars[param] : null;
        }
        return vars;
    }
    var modal = $_GET("modal");
    if (modal == "show") {
        $('#myModal').modal(modal);
    }

    var mail = $_GET("pswd");
    if(mail == "reset"){
        $.notify("Vous allez recevoir un mail avec votre mot de passe!", { class:"successNotif"});
    }
    else if(mail == "error"){
        $.notify("Error ! Verifiez l'email saisi!", { class:"badNotif"});
    }
    else if(mail == "wrong"){
        $.notify("Erreur ! Mot de passe incorrect!", { class:"badNotif"});
    }
    else if(mail == "ok"){
        $.notify("Mot de passe modifié avec succes!", { class:"successNotif"});
    }
    window.res_emoticons = getUrl("resources/SCE/emoticons/");
</script>

<script src="<spring:url value='/resources/SCE/development/jquery.sceditor.bbcode.js'/>"></script>
<link rel="stylesheet" href="<spring:url value='/resources/SCE/development/themes/default.css'/>"/>
</body>
</html>
