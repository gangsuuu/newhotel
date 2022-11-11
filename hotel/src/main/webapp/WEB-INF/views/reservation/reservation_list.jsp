<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신라스테이</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/reservation.css">
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div class="content-full">	
		<div class="reservation-step">
			<img src="http://localhost:9000/hotel/resources/img/reservation/rsv_step1_on.png">
		</div>
		<div class="reservation-requirement-container">
			<ul class="reservation-requirement">
				<li class="reservation-requirement-list">
					<p>체크인</p>
					<a href="#">2022.11.08(화)</a>
				</li>
				
			</ul>
		</div>
 	</div>
 	<%@ include file="../footer.jsp" %>
</body>
</html>