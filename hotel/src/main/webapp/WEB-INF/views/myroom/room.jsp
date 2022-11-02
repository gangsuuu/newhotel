<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 전체 */
	*{
		list-style:none;
	}
	.roomMain{
		width : 850px;
		margin:0 auto;
		
	}
	
	/* 상단 메뉴 */
	
	.topRoom{
		list-style:none;
	}
	.topBar{
		display : flex;
		justify-content: space-between;
	}
	.topBarUl{
		display : flex;
		padding-left:5px;
		margin-right : 5px;
		margin-bottom : 5px;

	}
	.topBarL{
		display : flex;
	margin-bottom : 0px;
		padding:0px;
	}
	.topBarL a{
		padding: 5px;
		border: 1px solid black;
		margin: 0px;
	}
	.topBarR a{
		padding: 5px;
		border: 1px solid black;
		margin: 0px;
	}
	.topBarR{
		/* position : relative; */
		/* left:300px; */
	}
	
	tr, td{
		border : 1px solid black;
		
	}
	.roomBar {
		border-spacing:0px;
		text-align : center;
		border:1px solid black;
		width:850px;
		height : 300px;
	}
	.roomBar tr:first-child td{
		width:55%;	
	}
	.roomBar tr:not(:first-child) td:first-child {
		width:15%;
	}
	
	/* 중단 메뉴 */
	
	.middleRoom{

	}
	.requestBar{
		display : flex;
		justify-content: space-between;	
	}
	
	.middleBarUl{
		display : flex;
		padding-left:5px;
		margin-right : 5px;
		margin-bottom : 5px;
	}
	.requestBarL a{
		border: 1px solid black;
		padding: 5px;
	}
	.requestBarR a{
		border: 1px solid black;
		padding: 5px;
	}

	.requestContent{
		border: 1px solid green;
		height : 150px;
	}
	
	/* 하단 메뉴 */
	.bottomRoom{

	}
	.infoBar{

	}
	.infoBarUl{
		display : flex;
		padding-left:5px;
		margin-right : 5px;
		margin-bottom : 5px;
	}
	.infoBar a{
		border: 1px solid black;
		padding: 5px;
	}
	.infoContent{
		border: 1px solid green;
		height : 350px;
	}
</style>
</head>
<body>
	<div class="roomMain">
		<div class="topRoom">
			<div class="topBar">
				<div class="topBarL">
					<ul class="topBarUl">
					<li><a class="roomMenu">예약 번호</a></li>
					<li><a class="roomMenu">투숙 상태</a></li>
					</ul>
				</div>
				<div class="topBarR">
					<ul class="topBarUl">
					<li><a class="roomMenu">이전 페이지</a></li>
					</ul>
				</div>
			</div>
			<table class="roomBar">
					
					<tr> 
						<td rowspan="4">이미지 </td>
					</tr>
					<tr>
						<td>RoomType</td>
						<td>룸 타입</td>
					</tr>
					<tr>
						<td>Day</td>
						<td>날짜</td>
					</tr>										
					<tr>
						<td>Price</td>
						<td>가격</td>
					</tr>										
			</table>
		</div>
		<div class="middleRoom">
			<div class="requestBar">
				<div class="requestBarL">
					<ul class="middleBarUl">
						<li><a class="requestMenu">요청 사항</a></li>
					</ul>
				</div>
				<div class="requestBarR">
					<ul class="middleBarUl">
				<li><a class="requestMenu">수정</a></li>
					</ul>
				</div>
			</div>
			<div class="requestContent">
				내용
			</div>
		</div>
		<div class="bottomRoom">
			<div class="infoBar">
				<ul class="infoBarUl">
				<li><a class="infoMenu">주의사항</a></li>
				<li><a class="infoMenu">어메니티</a></li>
				</ul>
			</div>
			<div class="infoContent">
				내용
			</div>
		</div>
	</div>
</body>
</html>