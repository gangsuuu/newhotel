<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/index.css">
<title>Insert title here</title>
</head>
<body>
   <header class='theme2'>
      <div class='header'>
         <div class='header_top_left theme2'>
         </div>
         <div class='header_top_mid'>
            <a href='http://localhost:9000/hotel/shillaStay.do' class='header_top_mid_logo logo_hub'>
               <img src="http://localhost:9000/hotel/resources/img/logo-ghm.png">
            </a>
         </div>
         <div class='header_top_right'>
            <div>
               <img src="http://localhost:9000/hotel/resources/img/public/header-call.png">
               
            <c:choose>
               <c:when test="${sessionScope.svo == null}">
                  <div class='header_top_guest theme2_guest'>
                     <a class='header_login' href='http://localhost:9000/hotel/shillaStay/login.do'>로그인</a>
                     <a href='http://localhost:9000/hotel/shillaStay/user/mypage.do'>MyPage</a>
                  </div>
               </c:when>
               
               <c:otherwise>
                  <div class='header_top_guest theme2_guest'>
                     <a class='header_login' href='http://localhost:9000/hotel/logout.do'>로그아웃</a>
                     <a href='http://localhost:9000/hotel/mypage.do'>MyPage</a>
                     <a href='http://localhost:9000/hotel/myroom.do?mid=${svo.mid}'>예약확인</a>
                     <!-- 관리자 일때, 메뉴 생성 -->
                     <c:if test="${sessionScope.svo.mid == 'admin' }">
                        <a href='http://localhost:9000/hotel/admin_inquiry_list.do'>admin</a>
                        <a href='http://localhost:9000/hotel/main.do'>호텔룸 관리</a>
                     </c:if>
                  </div>                  
               </c:otherwise>
            </c:choose>   
            </div>
         </div>
      </div>
         <div class='header_categori_container theme2_categori'>
            <ul class='header_maincategori_lists theme2_main'>
                  <li class='header_maincategori theme2_after' data-num="1" >
                     <a href='http://localhost:9000/hotel/shillaStay/accommodation/standard.do'>객실</a>
                     <ul class='header_subcategori_list theme2_sub_container' data-nav="rooms">
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/accommodation/standard.do'>스탠다드</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/accommodation/deluxe.do'>디럭스</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/accommodation/primierDeluxe.do'>프리미어 디럭스</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/accommodation/grand.do'>그랜드</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/accommodation/allrooms.do'>전체 객실 보기</a></li>
                     </ul>
                  </li>
                  <li class='header_maincategori theme2_after' data-num="2">
                     <a href='http://localhost:9000/hotel/shillaStay/dining/resturant.do'>다이닝</a>
                     <ul class='header_subcategori_list theme2_sub_container' data-nav="restaurant">
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/dining/resturant.do'>레스토랑</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/dining/lounge.do'>라운지 & 바</a></li>
                     </ul>
                  </li>
                  <li class='header_maincategori theme2_after' data-num="3">
                     <a href='http://localhost:9000/hotel/shillaStay/facilities/meetingRoom.do'>부대시설</a>
                     <ul class='header_subcategori_list theme2_sub_container' data-nav="facilites">
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/facilities/meetingRoom.do'>미팅룸</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/facilities/businessRoom.do'>비지니스 코너</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/facilities/fitnessRoom.do'>피트니스 센터</a></li>
                     </ul>
                  </li>
                  <li class='header_maincategori theme2_after' data-num="4">
                     <a href='#'>고객서비스</a>
                     <ul class='header_subcategori_list theme2_sub_container' data-nav="service">
                        <li><a class='theme2_sub' id='header_subcategori' href='#'>이벤트</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/notice_list.do'>공지사항</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/inquiry_list.do'>고객센터</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/inquiry_faq.do'>FAQ</a></li>
                     </ul>
                  </li>
                  <li class='header_maincategori theme2_after' data-num="5">
                     <a href='#'>마이페이지</a>
                     <ul class='header_subcategori_list theme2_sub_container' data-nav="mypage">
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/user/mypage.do'>마이페이지</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/user/mybooklist.do'>예약확인</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/user/mybookmarke.do'>북마크</a></li>
                        <li><a class='theme2_sub' id='header_subcategori' href='http://localhost:9000/hotel/shillaStay/user/myinfoEdit.do'>회원정보수정</a></li>
                     </ul>
                  </li>
                  <li class='header_maincategori_seach'>
                     <a class='theme2_main_seach' href='#'>위치찾기</a>
                  </li>
                  <li class='header_maincategori_res'>
                     <a class='theme2_main_res' href='http://localhost:9000/hotel/book.do'>예약</a>
                  </li>
            </ul>
         </div>
   </header>
   <script>
		$(".header_maincategori ").mouseover(function(){
			var num = $(this).data("num");
			$("[data-num="+num+"]").css('z-index','10');
	 	})
	 	$(".header_maincategori ").mouseout(function(){
	 		var num = $(this).data("num");
	 		$("[data-num="+num+"]").css('z-index','5');
	 	})
	</script>
</body>
</html>