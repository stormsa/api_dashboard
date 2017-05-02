<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Accueil</title>
    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/Bootstrap/bootstrap.css'/>">
    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/font-awesome/css/font-awesome.min.css'/>" />
    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/local.css'/>" />

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/shieldUi.min.css'/>">
    <link id="gridcss" rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/shieldDark.min.css'/>">
</head>
<body>
<!--Hello world
<a href="/meteo">meteo</a>
<a href="/news">news</a>-->
<div id="wrapper">
    <nav class="navbar navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value='/index/'/>">Dashboard Panel</a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul id="active" class="nav navbar-nav side-nav menu">
                <li class="Accueil selected"><a href="<c:url value='/index'/>"><i class="fa fa-home"></i> Dashboard</a></li>
                <li class="Ratp"><a href="<c:url value='/ratp'/>"><i class="fa fa-train"></i> RATP</a></li>
                <li class="Meteo"><a href="<c:url value='/meteo'/>"><i class="fa fa-cloud"></i> Meteo</a></li>
                <li class="News"><a href="<c:url value='/news'/>"><i class="fa fa-newspaper-o"></i> News</a></li>
                <li class="Uber"><a href="<c:url value='/map'/>"><i class="fa fa-car"></i> Autolib</a></li>
                <li class="News"><a href="#"><i class="fa fa-file-movie-o"></i> Cinema</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right navbar-user">
                <li class="dropdown messages-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">2 New Messages</li>
                        <li class="message-preview">
                            <a href="#">
                                <span class="avatar"><i class="fa fa-bell"></i></span>
                                <span class="message">Security alert</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li class="message-preview">
                            <a href="#">
                                <span class="avatar"><i class="fa fa-bell"></i></span>
                                <span class="message">Security alert</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                    </ul>
                </li>
                <li class="dropdown user-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <c:out value="${sessionScope.USER_INFORMATIONS.firstName}"/> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user"></i> Profil</a></li>
                        <li><a href="#"><i class="fa fa-gear"></i> Paramètres</a></li>
                        <li class="divider"></li>
                        <li><a href="<c:url value='/login/logOff'/>"><i class="fa fa-power-off"></i> Déconnexion</a></li>

                    </ul>
                </li>
                <li class="divider-vertical"></li>
                <li>
                    <form class="navbar-search">
                        <input type="text" placeholder="Search" class="form-control">
                    </form>
                </li>
            </ul>
        </div>
    </nav>
</div>