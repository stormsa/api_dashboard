<%--
  Created by IntelliJ IDEA.
  User: Vinh
  Date: 11/01/2017
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %><html>
<head>
    <title>meteo</title>
    <script src="<c:url value="/resources/js/jquery/jquery-2.2.3.min.js" />"></script>
   <script type="application/javascript">
       $(document).ready(function () {
           var url = ' https://newsapi.org/v1/sources?language=fr';
           $.getJSON(url, function (json) {
               alert(json);


           });

       });

   </script>
</head>
<body>

<h1 class="titlearea win-type-ellipsis">
    <span class="pagetitle">News Monde !</span>
</h1>
</body>
</html>
