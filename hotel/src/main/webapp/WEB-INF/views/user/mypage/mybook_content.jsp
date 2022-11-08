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
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mypage.do" class="content_list ">마이페이지</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybooklist.do" class="content_list content_selected">이용내역확인</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/mybookmarke.do" class="content_list">북마크</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/user/myinfoEdit.do" class="content_list">회원정보수정</a></li>
	              </ul>
			 </div>
		 </div>	
        <div class="content_menu">
        	<div class="content-location">
        	  <img src="http://localhost:9000/hotel/resources/img/locaton.gif">
        	  <span>> 예약내역확인></span>
        	  <span> 예약확인</span>
        	</div>
        	<div>
        	  <h2>예약확인</h2>
        	</div>
        	<div class="content-block"></div>
        	<div class="booking-roomMain">
				<div class="topBar">
					<div class="booking-topBarL">
						<ul class="booking-topBarUl">
						<li><a class="roomMenu">예약 번호</a></li>
						<li><a class="roomMenu">투숙 상태</a></li>
						</ul>
					</div>
					<div class="booking-topBarR">
						<a  href="http://localhost:9000/hotel/shillaStay/user/mybooklist.do"></a>
					</div>
				</div>
				<div class="booking-roomContent">
					<div class="booking-topRoom">
						<div class="booking-roomBar">
							<div class="booking-roomBar-img"> 
						</div>
							<div class="booking-room-info-container">
								<ul>
									<li class="booking-room-info">
										<span>객실타입</span>
										<span>더블룸</span>
									</li>
									<li class="booking-room-info">
										<span>결제</span>
										<span>완료/미납/</span>
									</li>
									<li class="booking-room-info">
										<span>날짜</span>
										<span>2022년 11월 06일 - 2022년 11월 07일</span>
									</li>
									<li class="booking-room-info">
										<span>인원</span>
										<span>성인 1 아이 2</span>
									</li>
									<li class="booking-room-info">
										<span>특이사항</span>
										<span>조식, 생일, 리버뷰</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="mybooking-middleRoom">
						<div class="mybooking-requestBar">
							<div class="mybooking-requestBarL">
								<a class="mybooking-requestMenu">요청 사항</a>
							</div>
							<div class="mybooking-requestBarR">
							</div>
						</div>
						<div class="mybooking-contentbox">
							<div class="mybooking-rquestContent-container">
								<textarea class="mybooking-request-textarea" readonly></textarea>
								<div class="mybooking-requestContent-editbuttons">
									<button class="mubooking-request-edit-btn btn">수정하기</button>
									<button class="mubooking-request-edit-cancel btn">수정취소</button>
									<button class="mubooking-request-edit-submint btn">수정완료</button>
								</div>
							</div>
							<div class="mybooking-contentbox-price">
								<div>
									<div>
										<p>객실요금<span> (1객실 x 1박)</span></p>
										<p>870,000 KRW</p>
									</div>
									<div>
										<p>세금 및 봉사료</p> 
										<p>182,700 KRW</p>
									</div>
								</div>
								<div class="mybooking-contentbox-total">
									<div>
										<p>총 요금</p>
										<p>1,052,700 KRW</p>									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="booking-bottomRoom">
				<div class="infoBar">
					<ul class="infoBarUl">
						<li class="infoBarLi"><a class="infoMenu btn" href="javascript:showcontent('use')">이용안내</a><span></span></li>
						<li class="infoBarLi"><a class="infoMenu btn" href="javascript:showcontent('amenity')">어메니티</a><span></span></li>
						<li class="infoBarLi"><a class="infoMenu btn" href="javascript:showcontent('cancel')">취소규정</a><span></span></li>
					</ul>
				</div>
				<div class="booking-infoContent">
					<ul>
						<li class="booking-infocontent-lists" data-content="use" style="display:block;">
							<p>호텔 이용안내</p>
							<p class="booking-infocontent-list">요금에는 10% 부가가치세가 부과됩니다.</p>
							<p class="booking-infocontent-list">2인 1실 기준</p>
							<p class="booking-infocontent-list">체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함된 신분증을 반드시 제시해 주시기 바랍니다.</p>
							<p class="booking-infocontent-list">13세 이하 어린이는 객실 인원 추가 요금을 받지 않습니다.</p>
							<p class="booking-infocontent-list">37개월 미만 유아는 조식이 무료입니다.</p>
							<p class="booking-infocontent-list">안내견을 제외한 애완견 등 동물 입장은 불가합니다.</p>
							<p class="booking-infocontent-list">부모를 동반하지 않은 만 19세 미만 미성년자는 투숙할 수 없습니다. (청소년 보호법 30조/58조)</p>
							<p class="booking-infocontent-list">상기 요금은 할인 요금이며, 중복 할인은 적용되지 않습니다.</p>
							<p class="booking-infocontent-list">자세한 객실안내는 02-2230-0700로 문의 바랍니다.</p>
							<p class="booking-infocontent-list">객실 이용 시 1박당 10,000원의 주차 요금이 부과됩니다. (객실당 1대, 추가 차량 이용 불가, 체크아웃 당일 오후 1시까지)</p>
							<p class="booking-infocontent-sub">* 호텔 주차장 만차 시 외부 지정 유료 주차장 이용 (1박당 5,000원)</p>
							<p class="booking-infocontent-sub">* 호텔 내/외부 주차장 이용 시 중간 출차 불가 (중간 출차 시 매회 5,000원 추가 부과)</p>
						</li>
						<li class="booking-infocontent-lists" data-content="amenity">
							<p>어메니티 안내</p>
							<p class="booking-infocontent-list">다회용 어메니티</p>
							<p class="booking-infocontent-list">덴탈 키트</p>
							<p class="booking-infocontent-list">헤어드라이기</p>
							<p class="booking-infocontent-list">코튼세트</p>
							<p class="booking-infocontent-list">배스로브, 배스타월, 핸드타월,워시 타월</p>
							<p class="booking-infocontent-list">배스매트</p>
							<p class="booking-infocontent-list">개인금고</p>
							<p class="booking-infocontent-list">다리미 세트</p>
							<p class="booking-infocontent-list">구둣주걱</p>
							<p class="booking-infocontent-list">슈 클리너</p>
							<p class="booking-infocontent-list">비상 손전등</p>
							<p class="booking-infocontent-list">유니버셜 어탭터</p>
							<p class="booking-infocontent-list">개별 냉난방 조절기</p>
							<p class="booking-infocontent-list">슈 클리너</p>
							<p class="booking-infocontent-sub">추가 침구류는 무료 입니다.</p>
							<p class="booking-infocontent-sub">다회용 어메니티는 1회까지 무료로 제공되며 이후 추가 요금 발생할 수 있습니다.</p>
						</li>
						<li class="booking-infocontent-lists" data-content="cancel">
							<p>취소 및 환불 규정</p>
							<p class="booking-infocontent-list">숙박예정일 1일전 18시까지는 위약금 없이 취소 가능</p>
							<p class="booking-infocontent-list">위 기간 이후 취소 또는 변경 시(No Show 포함)</p>
							<p class="booking-infocontent-sub">- 성수기 (4, 5, 6, 10, 11월, 12월 24일, 12월 31일) : 최초 1박 요금의 80% 부과</p>
							<p class="booking-infocontent-sub">- 비수기 (성수기 외 기간) : 최초 1박 요금의 10% 부과</p>
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
 		$(".mybooking-rquestContent-container").mouseover(function(){
 			$(".mybooking-requestContent-editbuttons").animate({width:"30%"}).css("display","flex");
 		})
 		$(".mybooking-rquestContent-container").mouseleave(function(){
 			$(".mybooking-requestContent-editbuttons").animate({width:"0%"},function(){
 				$(".mybooking-requestContent-editbuttons").css("display","none");
 			})
 		})
 		function showcontent(event){
 			$(".booking-infocontent-lists").css("display","none");
 			$("[data-content="+event+"]").css("display","block");
 		}
 		$(".mubooking-request-edit-btn").click(function(){
 			$(".mybooking-request-textarea").removeProp("readonly");
 			$(".mubooking-request-edit-btn").css("display","none");
 			$(".mubooking-request-edit-submint").css("display","block");
 			$(".mubooking-request-edit-cancel").css("display","block");
 		})
 		$(".mubooking-request-edit-cancel").click(function(){
 			$(".mubooking-request-edit-btn").css("display","block");
 			$(".mubooking-request-edit-submint").css("display","none");
 			$(".mubooking-request-edit-cancel").css("display","none");
 			$(".mybooking-request-textarea").prop("readonly","true");
 		})
 		
 		
 	</script>
 	
</body>
</html>