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
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybooklist.do" class="content_list">예약확인</a></li>
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
        	<div class="mypage-container">
	            <div class="mypage-top">
	                <div class="mypage-user-info">
	                    <div class="mypage-user-memberinfo">
	                        <h3>나의 멤버쉽</h3>
	                        <ul class="mypage-info">
	                            <li>
	                                <p class="mypage-info-title">이름</p>
	                                <p>이름</p>
	                            </li>
	                            <li>
	                                <p class="mypage-info-title">신라리워즈 등급</p>
	                                <p> CLASSIC</p>
	                            </li>
	                            <li>
	                                <p class="mypage-info-title">포인트</p>
	                                <p>0P</p>
	                            </li>
	                        </ul>
	                    </div>
	                    <div>
	                        <h3>2022년 이용실적</h3>
	                        <ul class="mypage-usecount">
	                            <li>
	                                <p class="mypage-info-title">투숙횟수</p> 
	                                <p class="mypage-info-content"><span>0</span>회</p>
	                            </li>
	                            <li>
	                                <p class="mypage-info-title">투숙일수</p> 
	                                <p class="mypage-info-content"><span>0</span>박</p>
	                            </li>
	                            <li>
	                                <p class="mypage-info-title">결제금액</p> 
	                                <p class="mypage-info-content">$<span>0.0</span></p>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="mypage-membership">
	                    <div class="myapge-membership-left">
	                        <div class="mypage-membership-img">
	                            <div>
	                                <p>내년 예상등급</p>
	                                <p>CLASSIC</p>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="mypage-membership-requirements">
	                        <p>SLIVER등급까지 남은 조건</p>
	                        <p><span>3</span> 회</p>
	                        <p><span>7</span> 박</p>
	                        <p>$<span>2000.0</span></p>
	                    </div>
	                </div>
	            </div>
	            <div class="mypage-membership-advantage-container">
	                <h2>신라리워즈 등급 기준 안내</h2>
	                <div class="mypage-membership-advantage-cards">
	                    <ul class="mypage-membership-advantage-card">
	                        <li class="mypage-membership-advantage-level">
	                            <h3>Classic</h3>
	                        </li>
	                        <li class="mypage-membership-advantage-requirements">
	                        </li>
	                        <li class="mypage-membershipt-advantage-benefit">
	                            <p>포인트적립4.5%</p>
	                            <p>$10e바우처 1매 제공</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                        </li>
	                    </ul>
	                    <ul class="mypage-membership-advantage-card">
	                        <li class="mypage-membership-advantage-level membership-silver">
	                            <h3>Sliver</h3>
	                        </li>
	                        <li class="mypage-membership-advantage-requirements">
	                            <p>3회<span></span>7박</p>
	                            <p>결제금액</p>
	                            <p>$2,000</p>
	                        </li>
	                        <li class="mypage-membershipt-advantage-benefit">
	                            <p>포인트적립4.5%</p>
	                            <p>$10e바우처 1매 제공</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                        </li>
	                    </ul>
	                    <ul class="mypage-membership-advantage-card">
	                        <li class="mypage-membership-advantage-level membership-gold">
	                            <h3>Gold</h3>
	                        </li>
	                        <li class="mypage-membership-advantage-requirements">
	                            <p>10회<span></span>25박</p>
	                            <p>결제금액</p>
	                            <p>$7,000</p>
	                        </li>
	                        <li class="mypage-membershipt-advantage-benefit">
	                            <p>포인트적립4.5%</p>
	                            <p>$10e바우처 1매 제공</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                        </li>
	                    </ul>
	                    <ul class="mypage-membership-advantage-card">
	                        <li class="mypage-membership-advantage-level membership-platinum">
	                            <h3>Platinum</h3>
	                        </li>
	                        <li class="mypage-membership-advantage-requirements">
	                            <p>20회<span></span>50박</p>
	                            <p>결제금액</p>
	                            <p>$15,000</p>
	                        </li>
	                        <li class="mypage-membershipt-advantage-benefit">
	                            <p>포인트적립4.5%</p>
	                            <p>$10e바우처 1매 제공</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                            <p>식음할인%</p>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	            <div class="mypage-mybooklist">
	            	<h2>이용내역</h2>
	            	<div class="mypage-mybook-type">
	            		<ul>
	            			<li class="mypage-mybook-type-list">전체보기</li>
	            			<li class="mypage-mybook-type-list">예약중</li>
	            			<li class="mypage-mybook-type-list">사용중</li>
	            			<li class="mypage-mybook-type-list">사용완료</li>	            			
	            		</ul>
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
					                <img class="bookmark-mybook-img"src="">
					            </div>
					            <div class="bookmark-right">
					                <div class="bookmark-right-top">
					                    <p>객실타입</p>
					                </div>
					                <div class="bookmark-right-mid">
					                    <div class="bookmark-info">
					                        <p class="bookmark-info-text"><span>2022년 11월 02일 - 2022년 11월 03일</span></p>
					                        <p class="bookmark-info-text"><span> 성인2 어린이1</span></p>
					                    </div>
					                    <div class="bookmark-bottom">
					                        <p class="bookmark-price"> 78000<span>원</span></p>
					                        <button class="bookmark-button btn">사용중</button>
					                    </div>
					                </div>
					            </div>
					        </div>
				        </li>
	            		<li>
			            	<div class="mypage-mybook-container">
					            <div class="bookmark-mybook-left">
					                <img class="bookmark-mybook-img"src="">
					            </div>
					            <div class="bookmark-right">
					                <div class="bookmark-right-top">
					                    <p>객실타입</p>
					                </div>
					                <div class="bookmark-right-mid">
					                    <div class="bookmark-info">
					                        <p class="bookmark-info-text"><span>2022년 11월 02일 - 2022년 11월 03일</span></p>
					                        <p class="bookmark-info-text"><span> 성인2 어린이1</span></p>
					                    </div>
					                    <div class="bookmark-bottom">
					                        <p class="bookmark-price"> 78000<span>원</span></p>
					                        <button class="bookmark-button">사용완료</button>
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
 	$("[data-nav=mypage]").children().eq(0).children().first().css("color","white");
 	</script>
</body>
</html>