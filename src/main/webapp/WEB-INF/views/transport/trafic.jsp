<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saziri
  Date: 18/05/2017
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="row col-md-10">
    <div class="row">
            <h3>Trafic en direct</h3>
            <ul class="list-group" id="trafic">

            </ul>
    </div>
</div>
<script src="<c:url value="/resources/js/ratp/main.js" />"></script>
<script>
    getTrafic();
</script>