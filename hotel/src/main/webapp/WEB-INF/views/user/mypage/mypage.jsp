<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신라스테이</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/index.css">
</head>
<body>
	<%@ include file="../../header.jsp" %>
	<div class="content">
        <div class="content_menu">
        	<div class="content-location">
        	  <img src="http://localhost:9000/hotel/resources/img/locaton.gif">
        	  <span>> 부대시설 ></span>
        	  <span> 피트니스 센터</span>
        	</div>
        </div>
 	</div>
 	<%@ include file="../../footer.jsp" %>
 	<script>
 	$("[data-nav=facilites]").css("display","block");
 	$("[data-nav=facilites]").children().eq(2).children().first().css("color","white");
 	</script>
</body>
</html>