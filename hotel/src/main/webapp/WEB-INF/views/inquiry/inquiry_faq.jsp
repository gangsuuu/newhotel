<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shill</title>
<link rel="stylesheet"  href="http://localhost:9000/hotel/resources/css/am-pagination.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
<script src="http://localhost:9000/hotel/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/hotel/resources/js/am-pagination.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script> -->
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/index.css">
<script>
	$(document).ready(function(){
		//페이징 처리
		var pager = $('#ampaginationsm').pagination({
			    maxSize: 5,	    		// max page size
			    totals: '${dbCount}',	// total rows	
			    page: '${rpage}',		// initial page		
			    pageSize: '${pageSize}',	// max number items per page 
			
			    // custom labels		
			    lastText: '&raquo;&raquo;', 		
			    firstText: '&laquo;&laquo;',		
			    prevText: '&laquo;',		
			    nextText: '&raquo;',
					     
			    btnSize:'sm'	// 'sm'  or 'lg'		
			});
			
			//페이징 번호 클릭 시 이벤트 처리
			$('#ampaginationsm').on('am.pagination.change',function(e){		
				   $('.showlabelsm').text('The selected page no: '+e.page);
		           $(location).attr('href', "http://localhost:9000/hotel/inquiry_list.do?rpage="+e.page);         
		    });
	
		//문의글 검색
		var search="${search}";
		
		if(search == "search"){
				$(".search_list").val("${searchlist}").prop("selected", true);
			}else{
				$(".search_list").val("title").prop("selected", true);
			}
			 
		$("#btnSearch").click(function(){
			if($("#searchName").val()==""){
				alert("내용을 입력해 주세요.");
				$("#searchName").focus();
			}else{
				list_search.submit();
			}

		});//click	
		
		
	});//ready
	
	function faq(){
		$(document).on('click','.faqList .txtQ',function(){
			$(".faqList .txtQ").not($(this)).removeClass('on').siblings(".txtA").slideUp("fast");
			$(this).toggleClass('on').siblings(".txtA").slideToggle("fast");
		});
	};
	
	
</script>
<style>
.lnbAreaMenuBar{ float:left; }
.lnbAreaMenuBar .MenuBar > .tit{ margin:0 0 29px 0; height:53px; background:url(http://localhost:9000/hotel/resources/img/inquiry/lnbTitle.gif); display:block; /* text-indent:-9999%; */ overflow:hidden;}
.MenuBar{ font-family:나눔명조OTF ExtraBold; width:216px; border:#ebe7e3 solid 1px; background:#ebe7e3; padding:23px; margin:0 0 30px 0;}
.MenuBar .tit { margin-top:7px; font-family:나눔명조OTF; font-weight: lighter; color:rgb(88,88,88); margin:0;}
.MenuBar .menu{ list-style:none; margin-top:20px; padding:0;}
.MenuBar img { margin-left: -8px; margin-top: 9px; }
.menu li a { color:rgb(88,88,88); }
.menu img { float:right; margin-top:-18px; display:inline-block; }
.MenuBar li{ margin:0 0 26px 0;}
.MenuBar li a{ text-decoration:none; /* background:#9CC; */ height:21px; display:block;   /* text-indent:-9999%; */ overflow:hidden;}
.MenuBar li a span{ margin-left:7px; display:block; margin-top:2px;} 
.MenuBar li a.on{ font-weight:bold; background-color:rgb(119,114,109); color:white;}
.MenuBar li li{ margin:0;}
.MenuBar li li a{ background:#CC6; display:block;}
.MenuBar li li a.on{ font-weight:bold;}

.contain { display:flex; width:1241px; height:895px; margin-right:202px; margin-bottom:100px; margin-left:202px;}
.container { margin-right:100px; }
.contents {
	margin:0px;
	width: 850px;
}

.contents .location .list{  display:block; font-size:11px; background:url(http://localhost:9000/hotel/resources/img/inquiry/locaton.gif) no-repeat 0 1px; line-height:12px; padding:0 0 0 17px;}

.tableTypeF{ border:none; border-top:#cdcbbe solid 1px; width:100%; border-collapse:collapse; table-layout:auto;}
.tableTypeF th,
.tableTypeF td{ border:none; padding:6px 13px; text-align:left; line-height:22px; border-bottom:#eceae1 solid 1px; color:#333333}
.tableTypeF th{color:#666; background:#faf9f4; font-size:13px }
.tableTypeF td{ background:#FFF; color:#1b1b1b; font-size:13px }

.tableTypeF td strong{ margin-left:30px; font-size:13px }
.tableTypeF td span{font-size:13px }

.tableTypeF .last th, .tableTypeF .last td {border-bottom:#cdcbbe solid 1px; }
.tableTypeF>tobidy> tr:last-child>td {
background: red;
}
.list { float:right; }
.tit { color: rgb(88,88,88); font-family: 나눔명조OTF; font-size:26px; margin-top:0; margin-bottom:10px;}
.tit1 { color: rgb(88,88,88); font-family: 나눔명조OTF; font-size:26px; margin-top:30px; margin-bottom:10px;}
#linewrite { margin-bottom: 5px; }
#ex1 { text-align:center; }
#ex3 { text-align:center; }
#modal_delete { background-color: white; font-size: 16px; color: rgb(58,49,37); font-weight: 800; margin-top: 10px;}
#passCheck{background: none; border: none; font-size: 15px; font-weight: 700; margin-left: 5px; margin-right: 3px;}
#passCheckText {margin-bottom: 15px; font-size: 17px; text-align: center; margin-top: 7px;}
.modal {text-align: center; height: 200px;}
#ex2 img {margin-top: 3px;}
#ex2 a {margin-top: 8px;}
#cancel {color: black; font-weight: 600;}
#ex3 p {margin-top: 10px; font-size: 19px;}


/**************** 추가 ***************/
#btnInquiry {
 background-color:rgb(58,49,37); 
 color:rgb(250,241,208); 
 height: 34px; 
 float:right; 
 position:absolute;
 right:0;
 top:0; 
 width: 110px;
 font-weight:600;
  }
  
#listtable { 
	border-collapse:collapse; 
	text-align:center; 
	width:850px; 
	border:none; 
	margin-top:10px;
}

#listtable tr:first-child {
 background-color: #ebe7e3; 
 height:38px;
 font-size:12px; 
 color:rgb(125,120,115);
 border:1px solid #cdcbbe;
 }
 
 #listtable tbody{
 border:none;
 }
 
#tabletitle { width:340px; }
#listtable tr { height:37px; font-size:13px; }
#listtable tr:last-child > td {
 border:none; }
 
#listtable a { color:black; text-decoration:none; }
#search { text-align:center; margin-top: 25px; }
#searchspan { font-size:12px; }
.search_list { height:22px; } 
#searchName { 
	height: 17px; 
}
#searchName:focus{
outline: none;
}
#btnSearch { 
	background-color: rgb(58,49,37); 
	color: rgb(250,241,208); 
	height: 23px; 
	font-size: 12px; 
	width: 40px;
	border-radius: 2px;
}
#ampaginationsm { height:80px; }
#ampaginationsm ul { margin-top:35px; }
.commentimg { background : url(http://localhost:9000/hotel/resources/img/inquiry/feedback.png); background-size:contain; width: 21px; height: 21px; display: inline-block; float: right; margin-left: -36px; margin-right: 15px;}
#no {height: 200px; font-size:16px;}
#nokeyword { margin-bottom: 12px; font-size:18px; }
#solution { margin-right: 240px; }
#solution2 { text-align: left; margin-left: 333px; margin-bottom: 40px; }
.content_list_two{ margin-top: -25px; font-weight: 500; margin-left: 10px; height: 20px; display: block; align-items: center; font-size: 14px; color:var(--hub-font);}

/****		경수추가목록		******/
[alt="shillastay"]{
margin: 10px 0;
}
.content-inquery{
position: relative;
}

/***********************************/

.icon1 {background: url(http://localhost:9000/hotel/resources/img/inquiry/FAQ.png) center 0 no-repeat;}
span .icon1 {background-position-x :0;}
</style>

</head>
<body>
	<!-- Header Include -->
	<%@ include file="../header.jsp" %>
	
	<!---------------------------------------------->
	<!--------------- MenuBar ---------------------->
	<!---------------------------------------------->

	<div class="content">
		<div class="content_lists">
			 <div class="content_inmenu">
				  <h2 class="suject">고객서비스</h2>
	              <ul>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/guestservice/introhotel.do" class="content_list">호텔안내</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/guestservice/viewGuestService.do" class="content_list">인근명소</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/notice_list.do" class="content_list">공지사항</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/inquiry_list.do" class="content_list content_selected">고객센터</a></li>
		              <li id="content_list_one"><a href="http://localhost:9000/hotel/inquiry_my_list.do?mid=${sessionScope.svo.mid }" class="content_list_two"> - 내문의함</a></li>
	              </ul>
			 </div>
		 </div>	
		 			
	<!---------------------------------------------->
	<!--------------- Content ---------------------->
	<!---------------------------------------------->
		<div class="contents" id="contents">
			<h1 calss="conTitle"><span>FAQ</span>자주 문의하는 질문에 답변을 <br>확인하실 수 있습니다.</h1>
			<div><a href="">1:1문의하기</a></div>
			<div class="">
				<ul>
					<li class="on">
						<a><span class="icon1"></span><div>전체</div></a>
					</li>
					<li>
						<a><span class="icon2"></span><div>이용안내</div></a>
					</li>
					<li>
						<a><span class="icon3"></span><div>객실</div></a>
					</li>
					<li>
						<a><span class="icon4"></span><div>F&B</div></a>
					</li>
					<li>
						<a><span class="icon5"></span><div>부대시설</div></a>
					</li>
					<li>
						<a><span class="icon6"></span><div>주의사항</div></a>
					</li>
					<li>
						<a><span class="icon7"></span><div>기타</div></a>
					</li>
				</ul>
				<form name="list_search" action="inquiry_list_search.do" method="post" id="search" >
					<div>	
						<input type="hidden" class="search_list" name="searchlist" id="searchlist">
						<input type="text" name="keyword" id="searchName" placeholder="제목+내용">
						<button class="btn" type="button" id="btnSearch">검색</button>
					</div>
				</form>
				
				<ul class="faqList">
					<li>
						<button class="txtQ">
							<span>Q</span>
						
							<span class="category">[이용안내]</span>
							<span>체크인, 체크아웃 시간은 어떻게 되나요?</span>
						</button>
						<div class="txtA">
							<p>호텔의  체크인 시간은 오후 15시이며 체크아웃 시간은 오전 11시입니다.<br>단, 투숙하는 상품의 별도 시간 규정이 있는 경우 상품의 내역이 우선됩니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[이용안내]</span>
							<span>객실 내 최대 투숙 인원 규정이 어떻게 되나요?</span>
						</button>
						<div class="txtA">
							<p>객실당 투숙 가능한 최대 인원 수와 객실 패키지에 포함된 기준 인원 수는 다를 수 있습니다.<br>또한 객실 패키지 별로 기준 인원이 상이하며, 기준 인원을 초과할 경우 추가 인원에 대한 요금이 부과됩니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[이용안내]</span>
							<span>체크인 전 또는 체크아웃 후 부대시설 이용 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>호텔 수영장, 피트니스, 플레이랩, 키즈존의 부대시설은  체크인 후부터 체크아웃 전까지 이용 가능합니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[이용안내]</span>
							<span>호텔 객실에서 외부 포장 음식을 먹어도 되나요?</span>
						</button>
						<div class="txtA">
							<p>신라호텔은 외부 음식 반입으로 발생할 수 있는 위생 상의 문제점을 사전에 예방하고 보다 쾌적한 환경을 제공하기 위해 호텔 내 외부 음식 반입을 제한하고 있습니다.<br><br>다만, 리조트 내 운영 중인 레스토랑 및 식음 매장 내에 공식적으로 판매되고 있는 To-go상품의 경우에는 객실 내 이용은 가능합니다.<br>더불어, 저희 호텔 룸서비스에서는 24시간 다양한 메뉴를 제공하고 있습니다. 객실 내에서 편안하게 이용이 가능하니 룸서비스 이용을 추천 드립니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[객실]</span>
							<span>호텔 내 침대 사이즈가 어떻게 되나요?</span>
						</button>
						<div class="txtA">
							<p>King 객실에는 너비 1800mm, 길이 2100mm의 킹사이즈 침대 1개, Twin 객실에는 너비 1400mm, 길이 2100mm의 더블 사이즈 침대 2개가 있습니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[객실]</span>
							<span>침대 이동(헐리웃베드) 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>객실 내 안전사고 예방 및 호텔 자산 손상의 우려로 가구의 재배치 혹은 이동은 불가합니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[객실]</span>
							<span>투숙 시 객실 내의 미니바 무료 제공 맞나요?</span>
						</button>
						<div class="txtA">
							<p>객실 내 미니바는 1박당 1회 무료이며, 추가 요청 시 요금이 부과됩니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[객실]</span>
							<span>유아용품 및 대여품은 어떻게 신청하나요?</span>
						</button>
						<div class="txtA">
							<p>유아용품 및 대여품은 한정된 수량으로 선착순으로 대여해 드리고 있으며, 조기 마감될 수 있으니 사전에 신청해 주시기 바랍니다.<br>객실 예약 확정 후 실시간 재고 상황에 따라 제공됩니다. <br><br>[대여 유아용품 안내 사항]<br>- 침대 안전가드 : 안전 상의 이유로 36개월 이하 유아 이용 권장<br>- 아기침대 :  낙상 등의 안전 상의 이유로 12개월 이하 유아 이용 권장<br>상기의 품목은 한정된 수량으로 중복 대여가 어렵습니다.<br><br>유아용 슬리퍼와 가운은 별도 준비되어 있지 않습니다.<br></p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[F&B]</span>
							<span>호텔 내 위치한 레스토랑의 종류가 어떻게 되나요?</span>
						</button>
						<div class="txtA">
							<p>신라호텔 내 호텔 프리미엄 뷔페 레스토랑 On The Plate 와 일식 파인다이닝 Raku, 이탈리안 레스토랑 La Scala, 음악이 흐르는 로비라운지 Lounge Paradise, 정통 광동식 파인 다이닝 Imperial Treasure가 있습니다. Imperial Treasure를 제외한 4개의 레스토랑은 신라호텔 직영으로 운영되며 신라리워즈 회원이시면 기본 5% 할인 혜택이 제공됩니다. 다만 영업장이 지정하는 프로모션 품목은 할인 대상에서 제외됩니다.<br><br>- On The Plate : 032-729-2200<br>- La Scala : 032-729-2203<br>- Raku : 032-729-2207(임시 휴장)<br>- Imperial Treasure : 032-729-2227<br>- Lounge Paradise : 032-729-2220</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[F&B]</span>
							<span>조식 이용 가능한 레스토랑은 어디인가요?</span>
						</button>
						<div class="txtA">
							<p>프리미엄 뷔페 레스토랑 On The Plate 에서 오전 6시 30분~10시 30분까지 이용하실 수 있습니다.<br>쾌적한 이용을 위하여 조식 뷔페 입장은 오전 10:00까지로 제한됩니다.<br><br>[요금]<br>- 성인 : 60,000원 (부가세 포함)<br>- 소아 : 30,000원 (부가세 포함)<br>- 36개월 이하 : 무료</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[F&B]</span>
							<span>레스토랑 내 유모차 반입 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>라운지파라다이스, 온더플레이트, 라쿠, 라스칼라, 임페리얼 트레져 모두 유모차 반입 가능하나 혼잡도에 따라 제한될 수도 있습니다. (외부 대기장소에 보관 가능)</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[F&B]</span>
							<span>룸서비스는 24시간인가요?</span>
						</button>
						<div class="txtA">
							<p>룸서비스는 시간대 별 다양한 메뉴가 준비되어 있으며 24시간 주문 가능합니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[부대시설]</span>
							<span>호텔 수영장 내 수영모 및 마스크 착용이 필수인가요?</span>
						</button>
						<div class="txtA">
							<p>수영모의 착용은 필수는 아니며 머리가 길 경우 묶어 주시길 권장드립니다.<br>신라호텔은 고객님의 안전과 코로나19 확산 방지를 위하여 수영장 이용 시 마스크 착용을 의무화 하고 있습니다. <br></p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[부대시설]</span>
							<span>비투숙객도 호텔 내 부대시설(수영장, 사우나, 플레이랩 등) 별도 이용 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>신라호텔 내 부대시설인 수영장, 사우나, 플레이 랩, 피트니스는 투숙객 전용 시설로 운영되고 있습니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[기타]</span>
							<span>호텔로 택배 보내서 투숙 기간 중 수령 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>사전에 호텔 측 대표메일(p-city@paradian.com) 혹은 대표번호(1833-8855)로 연락 주시어 하기의 정보를 공유 부탁드립니다.<br>- 호텔 예약자 정보, 택배에 기입하신 수령자 정보<br>- 운송장 번호, 택배업체명, 구매 물품</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[기타]</span>
							<span>호텔에서 사용하는 디퓨저나 향수 또는 객실 내 가구 및 비품 구매 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>신라호텔 내의 가구 및 비품은 신라호텔만을 위해 특별 디자인하여 주문 제작한 제품으로 별도로 판매하고 있지 않습니다. <br>신라호텔 디퓨져(SCENT OF PARADISE)는 온라인에서는 구매가 불가하며, #PART / GARDEN CAFÉ / LOUNGE PARADISE에서 구매가 가능합니다.<br></p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[기타]</span>
							<span>호텔에서 약 제공받을 수 있나요?</span>
						</button>
						<div class="txtA">
							<p>약물 오남용과 부작용을 막기 위한 약사법에 의거하여 호텔에서는 약을 제공할 수 없으며, 가벼운 찰과상 처치를 위한 소독 연고나 밴드 종류는 구비되어 있습니다. <br>신라호텔 내 플라자에 위치한 24시간 운영하는 편의점에서 상비약을 판매하고 있습니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[기타]</span>
							<span>호텔 내 반려동물 동반 및 투숙 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>신라호텔은 다양한 고객님들이 이용하시는 공간으로 반려동물의 호텔 출입을 금지하고 있습니다.<br>장애인 보조견의 경우 호텔에 사전 고지 후 동반 투숙이 가능합니다.</p>
						</div>
					</li>
					<li>
						<button class="txtQ">
							<span>Q</span>
							
							<span class="category">[기타]</span>
							<span>호텔 내 전자레인지 이용 가능한가요?</span>
						</button>
						<div class="txtA">
							<p>객실 내 취사 및 외부 음식 반입은 제한되며 전자레인지가 준비되어 있지 않습니다.<br>영아용 이유식에 한해 히팅 서비스가 제공되고 있으니 필요시 객실 내 전화기를 통해 0번으로 요청 부탁드립니다.</p>
						</div>
					</li>
				</ul>
				
			</div>
				
				<div id="ampaginationsm"></div>
				
		</div>
		
			
	
	<!-- Footer Include -->
	<%@ include file="../footer.jsp" %>
	<script>
 	$("[data-nav=service]").css("display","block");
 	$("[data-nav=service]").children().eq(2).children().first().css("color","white");
 	</script>
</body>
</html>