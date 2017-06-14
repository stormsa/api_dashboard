<%--
  Created by IntelliJ IDEA.
  User: saziri
  Date: 27/05/2017
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/profil.css" />">
<!-- Website Font style -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>


<div class="profil">
    <h3>Profil</h3>
    <div id="page-content-wrapper">
        <div class="row">
            <div class="col-md-3">
                <div class="divImage">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="/resources/img/profil/001-man-4.png">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </button>

                        <ul class="dropdown-menu">
                            <li>
                                <a href="#" title="Bleu"><img src="/resources/img/profil/001-man-4.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Rouge"><img src="/resources/img/profil/002-man-3.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Jaune"><img src="/resources/img/profil/003-man-2.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Vert"><img src="/resources/img/profil/004-girl-1.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Rouge"><img src="/resources/img/profil/005-man-1.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Jaune"><img src="/resources/img/profil/006-man.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Vert"><img src="/resources/img/profil/007-boy-1.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Jaune"><img src="/resources/img/profil/008-boy.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Vert"><img src="/resources/img/profil/009-girl.png"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="divInfo">
                    <h4>Nom Prenom</h4>
                    <div class="Name"><c:out value="${sessionScope.USER_INFORMATIONS.lastName}"/><c:out value="${sessionScope.USER_INFORMATIONS.firstName}"/></div>
                    <div class="firsteName"></div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="divColor">
                    <div class="btn-group">
                        <h4>Theme</h4>
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAMAAAAKE/YAAAAAA1BMVEUAAP+KeNJXAAAANklEQVR4nO3BMQEAAADCoPVPbQlPoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADgY39EAAGTgIAHAAAAAElFTkSuQmCC">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </button>

                        <ul class="dropdown-menu">
                            <li>
                                <a href="#" title="Bleu"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAMAAAAKE/YAAAAAA1BMVEUAAP+KeNJXAAAANklEQVR4nO3BMQEAAADCoPVPbQlPoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADgY39EAAGTgIAHAAAAAElFTkSuQmCC"></a>
                            </li>
                            <li>
                                <a href="#" title="Rouge"><img src="https://i.kinja-img.com/gawker-media/image/upload/s--XkYSDzxz--/c_scale,fl_progressive,q_80,w_800/hflvykipmc5g22mc3m0m.jpg"></a>
                            </li>
                            <li>
                                <a href="#" title="Jaune"><img src="http://is4.mzstatic.com/image/thumb/Purple117/v4/9a/83/ba/9a83ba30-9103-ba72-2f79-456bffd307ac/source/1200x630bb.jpg"></a>
                            </li>
                            <li>
                                <a href="#" title="Vert"><img src="http://www.colorcombos.com/images/colors/00FF00.png"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="divAdresse col-md-10">
                <div class="rowTitle">
                    <div class="title"><h2>Adresse</h2></div>
                    <div class="divAdd"><span class="glyphicon glyphicon-plus"></span></div>
                </div>
                <div class="row item">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#adress1"><i class="itemAdresse"></i> Adresse 1</a>
                                </h4>
                            </div>
                            <div id="adress1" class="panel-collapse collapse">
                                <div class="row col-md-10">
                                    <div class="col-md-3">
                                        <input id="adress" class="form-control" placeholder="Adresse"
                                               onFocus="geolocate()" type="text"></input>
                                    </div>
                                    <div class="col-md-3">
                                        <input id="city" class="form-control" placeholder="Ville"
                                               onFocus="geolocate()" type="text"></input>
                                    </div>
                                    <div class="col-md-2">
                                        <input id="cp" class="form-control" placeholder="Code postal"
                                               onFocus="geolocate()" type="text"></input>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="button" class="form-control btn btn-success" id="calcIti" value="Sauvegarder"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <span class="itemSubAdresse">Travail</span>
                </div>
                <div class="row item">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#adress2"><i class="itemAdresse"></i> Adresse 2</a>
                                </h4>
                            </div>
                            <div id="adress2" class="panel-collapse collapse">
                                <div class="row col-md-10">
                                    <div class="col-md-4">
                                        <input id="adress2Input" class="form-control" placeholder="Adresse"
                                               onFocus="geolocate()" type="text"></input>
                                    </div>
                                    <div class="col-md-2">
                                        <input id="city2" class="form-control" placeholder="Ville"
                                               onFocus="geolocate()" type="text"></input>
                                    </div>
                                    <div class="col-md-2">
                                        <input id="cp2" class="form-control" placeholder="Code postal"
                                               onFocus="geolocate()" type="text"></input>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="button" class="form-control btn btn-success" id="calcIti2" value="Sauvegarder"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <span class="itemSubAdresse">Maison</span>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('.btn-group .dropdown-menu li').click(function(){
        $(this).parents('.btn-group').find('button img').attr("src",$(this).find('a img').attr("src"));
    });
</script>