<%--
  Created by IntelliJ IDEA.
  User: Vinh
  Date: 11/01/2017
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<div id="NewsDiv" class="col-md-4 newsDiv col-md-offset-1">
    <h1 class="titlearea win-type-ellipsis">
        <span class="pagetitle" >News Monde !</span>
    </h1>
    <div id="carousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="row">
            <div class="">
                <div class="carousel-inner">

                </div>
                <!-- Controls -->
                <a id="prev" class="left carousel-control" href="#text-carousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a id="next" class="right carousel-control" href="#text-carousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
</div>
    <script src="<c:url value="/resources/js/jquery/jquery-2.2.3.min.js" />"></script>
    <script src="<c:url value="/resources/js/news.js" />"></script>