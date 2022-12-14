<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
 	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

 
 	<script type="text/javascript">    
 	$(document).ready(function () {            
 		$.datepicker.setDefaults($.datepicker.regional['ko']);             
 		$( "#startDate" ).datepicker({                 
 			changeMonth: true,                  
 			changeYear: true,                 
 			nextText: '다음 달',                 
 			prevText: '이전 달',                  
 			dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],                 
 			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],                  
 			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],                 
 			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],                 
 			dateFormat: "yymmdd",                 maxDate: 0,                       
 			// 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)                 
 			onClose: function( selectedDate ) {                          
 				//시작일(startDate) datepicker가 닫힐때                      
 				//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정                     
 				$("#endDate").datepicker( "option", "minDate", selectedDate );                 
 				}                 
 				});            
 				$( "#endDate" ).datepicker({                 
 					changeMonth: true,                  
 					changeYear: true,                 
 					nextText: '다음 달',                 
 					prevText: '이전 달',                  
 					dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],                 
 					dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],                  
 					monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],                 
 					monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],                 
 					dateFormat: "yymmdd",                 maxDate: 0,                       
 					// 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)                 
 					onClose: function( selectedDate ) {                         
 						// 종료일(endDate) datepicker가 닫힐때                     
 						// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정                     
 						$("#startDate").datepicker( "option", "maxDate", selectedDate );  
 						}                 
 						});        
 						});
 	
 	
 	</script>

 <title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>방 목록</h2>
	<form name="" action="" method="">
	<table border="1">
			<c:choose>
			<c:when test="${empty basketlist}">
			<h3>등록된 방이 없습니다.</h3>
			
			</c:when>
			<c:otherwise>
			<tr>
				<th width="30px">ROOM PICTURE</th>
				<th width="50px">PRICE</th>
				<th>ROOM NAME</th>
				<th>DATE</th>
			</tr>
			
			<c:forEach var="item" items="${basketlist}"> 
			<tr>
				
				<td align="center"><input type="hidden" name="bid" value="${item.bid}">
				<img src="http://localhost:9000/hotel/resources/upload/${item.bsfile}" width="200"></td>
				<td>${item.bprice}</td>
				<td>${item.brname}</td>
				<td>
					<input type="text" id="startDate">
					<input type="text" id="endDate">
  				</td>		
			</tr>
			</c:forEach>
			</c:otherwise>
			</c:choose>
	</table>
	<button type="submit">예약</button>
	<button type="button" onclick="location.href='http://localhost:9000/hotel/main.do'">홈으로</button>
	</form>
	</div>
</body>
</html>