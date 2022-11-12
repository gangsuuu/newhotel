<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>항상 즐거움이 있는 SHILLA STAY!</title>
<script src="http://localhost:9000/hotel/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/inquiry.css">
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/admin/adminbook.css">
</head>
<body>
<%@ include file="../../header.jsp" %>
	<div class="content">
		<div class="modal-background"></div>
		<div class="content_lists">
			<div class="content_inmenu">
					<h2 class="suject">소개</h2>
				<ul>
					<li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/hotelinfo.do" class="content_list ">호텔정보</a></li>
					<li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/hotelMap.do" class="content_list content_selected">층별안내도</a></li>
					<li id="content_list_one"><a href="http://localhost:9000/hotel/shillaStay/hotellocation.do" class="content_list ">오시는길</a></li>
				</ul>
			</div>
		</div>
		<div class="content_menu">
			<div class="ctnInquires ctnCtUs">
				<div class="location">
					<p class="list">
						<span class="crPosit"></span>
						 > 객실관리 >
						<strong>객실관리</strong>
					</p>
				</div>
				<div class="account">
					<div class="headTit">
						<h3 class="tit">객실관리</h3>
						<div class="content-block"></div>
					</div>
				</div>
				<div class="admin-roomedit-showtype">
					<div class="admin-roomedit-select">
						<select class="admin-roomedit-listselect type" name="" id="">
							<option value="">룸 타입별</option>
							<option value="">층 별</option>
						</select>
						<select class="admin-roomedit-listselect detail" name="" id="">
							<option value="">전체보기</option>
							<option value="">1층</option>
							<option value="">2층</option>
							<option value="">3층</option>
						</select>
					</div>
					<div class="admin-roomedit-btns">
						<a class="admin-roomedit_btn_style" href="javascript:showModal('insert')">객실추가</a>
						<a class="admin-roomedit_btn_style" href="javascript:showModal('floorMap')">객실수정</a>
						<a class="admin-roomedit_btn_style" href="javascript:showModal('floorMap')">객실삭제</a>
					</div>
				</div>
				<div class="admin-roomedit-roomtable">
					<table class="admin-roomedit-roomtable-table">
						<tr>
							<th></th>
							<th>객실번호</th>
							<th>배드타입</th>
							<th>회원가격(평일)</th>
							<th>회원가격(주말)</th>
							<th>비회원가격(평일)</th>
							<th>비회원가격(주말)</th>
							<th>수용인원</th>
							<th>객실사용여부</th>
						</tr>
						<tr>
							<td class="admin-roomedit-rowspan" rowspan="4">1층</td>
							<td class="roomtable-detail">101<span>호</span></td>
							<td class="roomtable-bedtype">DDB1</td>
							<td class="roomtable-price">10,000<span>₩</span></td>
							<td class="roomtable-price">12,000<span>₩</span></td>
							<td class="roomtable-price">12,000<span>₩</span></td>
							<td class="roomtable-price">13,000<span>₩</span></td>
							<td class="roomtable-guestnum"> 3<span>명</span></td>
							<td class="roomtable-able"><input type="checkbox"></td>
						</tr>
						<tr>
							<td>스위트</td>
							<td>DDB1</td>
							<td>10,000<span>₩</span></td>
							<td>12,000<span>₩</span></td>
							<td>12,000<span>₩</span></td>
							<td>13,000<span>₩</span></td>
						</tr>
						<tr>
							<td>패밀리</td>
							<td>DDB1</td>
							<td>10,000<span>₩</span></td>
							<td>12,000<span>₩</span></td>
							<td>12,000<span>₩</span></td>
							<td>13,000<span>₩</span></td>
						</tr>
						<tr>
							<td>프리미어 디럭스</td>
							<td>DDB1</td>
							<td>10,000<span>₩</span></td>
							<td>12,000<span>₩</span></td>
							<td>12,000<span>₩</span></td>
							<td>13,000<span>₩</span></td>
						</tr>
						<tr>
							<td class="admin-roomedit-rowspan"rowspan="2">2층</td>
							<td rowspan="2">더블</td>
							<td>DDB1</td>
							<td>10,000</td>
							<td>12,000</td>
							<td>12,000</td>
							<td>13,000</td>
						</tr>
						<tr>
							<td>DDB1</td>
							<td>10,000</td>
							<td>12,000</td>
							<td>12,000</td>
							<td>13,000</td>
						</tr>
						<tr>
							<td class="admin-roomedit-rowspan" rowspan="2">3층</td>
							<td>더블</td>
							<td>DDB1</td>
							<td>10,000</td>
							<td>12,000</td>
							<td>12,000</td>
							<td>13,000</td>
						</tr>
						<tr>
							<td>더블</td>
							<td>DDB1</td>
							<td>10,000</td>
							<td>12,000</td>
							<td>12,000</td>
							<td>13,000</td>
						</tr>
					</table>
				</div>

		</div>
	<!-- modal -->
	</div>
		 <div class="modal-background"></div>
		 <div class="content-modal" id="insertmodal">
			<div class="modal-header">
				<div class="admin-roomedit-modaltitle">
					<h3>객실등록</h3>
				</div>
				<div class="modal-close btn">
					<img src="http://localhost:9000/hotel/resources/img/accommodation/popLayerBtnClose.gif">
				</div>
			</div>
			<div class="admin-roomedit-modalcontent">
				<div class="admin-roomedit-top">
					<div class="admin-roomedit-img">
						<div class="amdin-roomedit-roomimg">
					
							<p>이미지를 등록해주세요</p>
						</div>
					</div>
					<ul class="admin-roomedit-roomtype">
						<li>
							<span>객실 타입</span>
							<select class="admin-roomedit-input roomedit-type" id="insert-roomtype">
								<option value="">객실 타입을 선택해 주세요</option>
								<option value="S">Standard</option>
								<option value="D">Deluxe</option>
								<option value="P">Premier Deluxe</option>
								<option value="G">Grand</option>
							</select>
						</li>
						<li>
							<div>
								<select class="admin-roomedit-input roomedit-bed"  id="insert-bedtype">
									<option value="DB">Double</option>
									<option value="TW">Twin</option>
									<option value="TP">Triple</option>
								</select>
								<span>배드타입</span>
							</div>
							<div>
								<select class="admin-roomedit-input roomedit-view"  id="insert-view">
									<option value="1">한강</option>
									<option value="2">시티</option>
								</select>
								<span>뷰</span>
							</div>
						</li>
						<li>
							<div>
								<select class="admin-roomedit-input roomedit-floor"  id="insert-floor">
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
								</select>
								<span>층</span>
							</div>
							<div>
								<input class="admin-roomedit-input roomedit-roomnum"  id='insert-roomnumber'>
								<span>호</span>
							</div>
						</li>
					</ul>
				</div>
				<div class="admin-roomedit-under">
					<table class="admin-roomedit-pricetable">
						<tr>
							<th>가격</th>
							<th>주말</th>
							<th>공휴일</th>
							<th colspan="2">기타</th>
						</tr>
						<tr>
							<td>회원</td>
							<td><input class="admin-roomedit-input roomedit-price" type="text"  id="insert-memberdefaultPriceWeekday">원</td>
							<td><input class="admin-roomedit-input roomedit-price" type="text"  id="insert-memberdefaultPriceWeekend">원</td>
							<td class="roomedit-other">룸사이즈</td>
							<td class="roomedit-roomsizebox">
								<input class="admin-roomedit-input roomedit-roomsize"  id="insert-roomsize"><span>m<sup>2</sup></span>
							</td>
						</tr>
						<tr>
							<td>비회원</td>
							<td><input class="admin-roomedit-input roomedit-price" type="text"  id="insert-defaultPriceWeekday">원</td>
							<td><input class="admin-roomedit-input roomedit-price" type="text"  id="insert-defaultPriceWeekend">원</td>
							<td class="roomedit-other">최대 인원수</td>
							<td class="roomedit-usercount">
								<select class="admin-roomedit-input roomedit-usercount"  id="insert-user">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
								</select>
								명
							</td>
						</tr>
					</table>
				</div>
			</div>					
			<div class="roomedit-btn">
				<a href="#"><img src="http://localhost:9000/hotel/resources/img/Room/btn_insert.gif"></a>
			</div>
		 </div>
	</div>
	<input type="hidden" name="roomtype">
	<input type="hidden" name="bedType">
	<input type="hidden" name="roomview">
	<input type="hidden" name="roomfloor">
	<input type="hidden" name="roomnumber">
	<input type="hidden" name="memberdefaultPriceWeekday">
	<input type="hidden" name="memberdefaultPriceWeekend">
	<input type="hidden" name="defaultPriceWeekday">
	<input type="hidden" name="defaultPriceWeekend">
	<input type="hidden" name="roomtotalUser">
	<input type="hidden" name="roomSize">
	<input type="file" name="" id="roomedit-img">
	<script src="http://localhost:9000/hotel/resources/js/showModal.jsp"></script>
	<script>
	$(".amdin-roomedit-roomimg").click(function(){
		$("#roomedit-img").click();		
	})
	$("#roomedit-img").change(function(){
		var upload = document.querySelector("#roomedit-img");
		var filename = upload.files[0].name;
		var reader = new FileReader();
		reader.onload = function(event){
			var imgshow = $(".amdin-roomedit-roomimg")
			var img =document.createElement("img");
				img.setAttribute("data-name",filename);
				img.setAttribute("src",event.target.result);
				img.setAttribute("class","roomedit-imgshow");
			if($(".amdin-roomedit-roomimg").children('img').length >= 1){
				$(".amdin-roomedit-roomimg").empty();
			}
			
			$(".amdin-roomedit-roomimg").append(img);
		}
		reader.readAsDataURL(event.target.files[0]);
	})
	</script>
	<script>
		$(".roomedit-btn").click(function(){
			$.ajax({
				url:"/inquiry_passCheck.do",
				success:function(resutl){
					
				}
			})
		})
	
	 	function admininsert(){
	 		var file = $("#roomedit-img").val()
			var bedtype = $("input[name='bedtype']");
			var roomtype = $("input[name='roomType']");
			var roomview = $("input[name='roomview']");
			var roomSize = $("input[name='roomSize']");
			var roomfloor = $("input[name='roomfloor']");
			var roomnumber = $("input[name='roomnumber']");
			var roomtotalUser = $("input[name='roomtotalUser']");
			var defaultPriceWeekend = $("input[name='defaultPriceWeekend']");
			var efaultPriceWeekday = $("input[name='defaultPriceWeekday']");
			var memberdefaultPriceWeekday = $("input[name='memberdefaultPriceWeekday']");
			var memberdefaultPriceWeekend = $("input[name='memberdefaultPriceWeekend']");
	 		
			$.ajax({
				url:"/inquiry_passCheck.do",
				success:function(result){
					if(result == 'ok'){
					}else{
					}				
				}
			}); 	
		}
	</script> 
	
<%@ include file="../../footer.jsp" %>
</body>
</html>