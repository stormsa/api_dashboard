<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
                <div class="row">
                        <jsp:include page="meteo.jsp"/>

                        <jsp:include page="news.jsp"/>
                </div>
                <div class="row">
                    <div class="col-md-10 map">
                        <h3></h3>
                        <span class="titre">
                            Carte des autolibs
                        </span>
                        <jsp:include page="map.jsp"/>
                    </div>
                </div>
    <!-- /#wrapper -->
</body>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="<c:url value="/resources/js/meteo.js" />"></script>
</html>