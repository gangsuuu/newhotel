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
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/account.css">
</head>
<body>
	<%@ include file="../../header.jsp" %>
	<div class="content">
	<!---------------------------------------------->
	<!--------------- MenuBar ---------------------->
	<!---------------------------------------------->
		<div class="content_lists">
			 <div class="content_inmenu">
				  <h2 class="suject">마이페이지</h2>
	              <ul>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mypage.do" class="content_list content_selected">마이페이지</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybooklist.do" class="content_list">이용내역확인</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybookmarke.do" class="content_list">북마크</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/myinfoEdit.do" class="content_list">회원정보수정</a></li>
	              </ul>
			 </div>
		 </div>	
        <div class="content_menu">
        	<div class="content-location">
        	  <img src="http://localhost:9000/hotel/resources/img/locaton.gif">
        	  <span>> 마이페이지 ></span>
        	  <span> 마이페이지</span>
        	</div>
        	<div>
        	  <h2>마이페이지</h2>
        	</div>
        	<div class="content-block"></div>
        </div>
 	</div>
 	<%@ include file="../../footer.jsp" %>
 	<script>
 	$("[data-nav=mypage]").css("display","block");
 	$("[data-nav=mypage]").children().eq(1).children().first().css("color","white");
 	</script>
</body>
</html>