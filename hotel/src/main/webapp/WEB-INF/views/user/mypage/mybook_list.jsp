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
				  <h2 class="suject"> 마이페이지</h2>
	              <ul>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mypage.do" class="content_list">마이페이지</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybooklist.do" class="content_list content_selected">이용내역확인</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybookmarke.do" class="content_list">북마크</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/myinfoEdit.do" class="content_list">회원정보수정</a></li>
	              </ul>
			 </div>
		 </div>	
        <div class="content_menu">
        	<div class="content-location">
        	  <img src="http://localhost:9000/hotel/resources/img/locaton.gif">
        	  <span>> 마이페이지 ></span>
        	  <span> 이용내역확인</span>
        	</div>
        	<div>
        	  <h2>이용내역확인</h2>
        	</div>
        	<div class="content-block"></div>
        	<div class="mybooklist-choicebox">
				<label>사용전</label>
				<input type="checkbox" class="mybooklist" id="use" value="use">
				<label for="use" class="mybooklist-checkbox"><span class="mybooklist-point"></span></label>
				<label>사용중</label>
				<input type="checkbox" class="mybooklist" id="using" value="using">
				<label for="using" class="mybooklist-checkbox"><span class="mybooklist-point"></span></label>
				<label>사용완료</label>
				<input type="checkbox" class="mybooklist" id="used" value="used">
				<label for="used" class="mybooklist-checkbox"><span class="mybooklist-point"></span></label>
			</div>
        	<div class="mypage-container">
	            <div class="mypage-mybooklist">
	            	<div class="mypage-mybook-type">
	            	</div>
	            	<ul>
	            		<li>
			            	<div class="mypage-mybook-container">
					            <div class="mypage-mybook-left">
					                <img class="mypage-mybook-img"src="">
					            </div>
					            <div class="mypage-mybook-right">
					                <div class="mypage-mybook-right-top">
					                    <p>객실타입</p>
					                </div>
					                <div class="mypage-mybook-right-mid">
					                    <div class="mypage-mybook-info">
					                        <p class="mypage-mybook-info-text">2022년 11월 02일 - 2022년 11월 03일</p>
					                        <p class="mypage-mybook-info-text">성인2 어린이1<span></span>78000원</p>
					                    </div>
					                    <div class="mypage-mybook-bottom">
					                        <button class="mypage-mybook-button btn">내역확인</button>
					                        <button class="mypage-mybook-button btn">예약취소</button>
					                    </div>
					                </div>
					            </div>
					        </div>
				        </li>
	            		<li>
			            	<div class="mypage-mybook-container">
					            <div class="mypage-mybook-left">
					                <img class="mypage-mybook-img"src="">
					            </div>
					            <div class="mypage-mybook-right">
					                <div class="mypage-mybook-right-top">
					                    <p>객실타입</p>
					                </div>
					                <div class="mypage-mybook-right-mid">
					                    <div class="mypage-mybook-info">
					                        <p class="mypage-mybook-info-text">2022년 11월 02일 - 2022년 11월 03일</p>
					                        <p class="mypage-mybook-info-text">성인2 어린이1<span></span>78000원</p>
					                    </div>
					                    <div class="mypage-mybook-bottom">
					                    	<a href="http://localhost:9000/hotel/shillaStay/user/mybooking.do?reservation="><button class="mypage-mybook-button btn">내역확인</button></a>
					                        <a><button class="mypage-mybook-button btn">사용중</button></a>
					                    </div>
					                </div>
					            </div>
					        </div>
				        </li>
	            		<li>
			            	<div class="mypage-mybook-container">
					            <div class="mypage-mybook-left">
					                <img class="mypage-mybook-img"src="">
					            </div>
					            <div class="mypage-mybook-right">
					                <div class="mypage-mybook-right-top">
					                    <p>객실타입</p>
					                </div>
					                <div class="mypage-mybook-right-mid">
					                    <div class="mypage-mybook-info">
					                        <p class="mypage-mybook-info-text">2022년 11월 02일 - 2022년 11월 03일</p>
					                        <p class="mypage-mybook-info-text">성인2 어린이1<span></span>78000원</p>
					                    </div>
					                    <div class="mypage-mybook-bottom">
					                        <button class="mypage-mybook-button btn">후기작성</button>
					                        <button class="mypage-mybook-button btn">사용완료</button>
					                    </div>
					                </div>
					            </div>
					        </div>
				        </li>
	            		
					</ul>        
	            </div>
	        </div>
        </div>
 	</div>
 	<%@ include file="../../footer.jsp" %>
 	<script>
		$("[data-nav=mypage]").css("display","block");
		$("[data-nav=mypage]").children().eq(1).children().first().css("color","white");
 	</script>
 	<script>
	 	 $(".mybooklist").click(function(){
	         let checked  = $("input[id=join-getid]:checked").val();
	         let idname = $(this).attr("id");
	         $("label[for="+idname+"]").children(0).toggleClass("mybooklist-point-checked");
	     })
	     
	      $(".mybooklist").click(function(){
	         let checked  = $("input[id=join-marketing]:checked").val();
	         if(checked == "on"){
	             $(".join-marketing-point").addClass("join-marketing-checked");
	         }else{
	             $(".join-marketing-point").removeClass("join-marketing-checked");
	         }
	     })
 	</script>
</body>
</html>