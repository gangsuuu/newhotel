<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <title>Page Title</title>
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/account.css">
<script src="http://localhost:9000/hotel/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://localhost:9000/hotel/resources/js/myhotel_jquery.js"></script>
</head>
<body>
	<%@ include file="../../header.jsp" %>
	<form name="joinForm"  action="joinCheck.do"  method="post">
	        <main>
	        <article class="join-content">
	            <div class="joinintro">
	                <h1>회원가입</h1>
	                <p>신라리워즈 멤버쉽 회원만을 위한</p>
	                <p>다양한 혜택과 서비스를 누려보세요.</p>
	            </div>
	            <div class="join-container">
	                <div class="join-container-inner">
	                    <div class="join-acount-container">
	                        <div class="join-intro-container">
	                            <p class="join-input-list">아이디 및 비밀번호</p>
	                        </div>
	                        <ul>
	                            <li class="join-input-box">
	                                <h2>아이디(이메일)</h2>
	                                <input name="id" class="join-input input-type1 join-input-id">
	                                <p class="input-idcheck-msg"></p>
	                            </li>
	                        </ul>
	                        <ul class="input-pass-container">
	                            <li class="join-input-box">
	                                <h2>새 비밀번호</h2>
	                                <input type="password" class="join-input input-type1 join-input-pass">
	                            </li>
	                            <li class="join-input-box">
	                                <h2>새 비밀번호 확인</h2>
	                                <input class="join-input  input-type1 join-input-passcheck">
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="join-block"></div>
	                    <div class="join-userinfo-container">
	                        <div class="join-intro-container">
	                            <p class="join-input-list">기본 정보</p>
	                            <p class="join-input-notice">*필수 입력항목</p>
	                        </div>
	                        <div class="join-user-info">
	                           <div class="join-userinfo-left">
	                                <ul>
	                                    <li class="join-input-box">
	                                        <h2>이름(한글)*</h2>
	                                        <input class="join-input  input-type1 join-input-name">
	                                    </li>
	                                    <li class="join-input-box">
		                                    <h2>성별/국적*</h2>
		                                    <select class="join-input input-type2 join-input-gender">
	                                            <option>성별</option>
	                                            <option value="M">남</option>
	                                            <option value="W">여</option>
	                                        </select>
	                                        <div class="join-arrow"></div>
	                                        <select class="join-input input-type2 join-input-country">
	                                            <option>국가</option>
	                                            <option value="KOR">대한민국</option>
	                                            <option value="USA">미국</option>
	                                            <option value="ENG">영국</option>
	                                            <option value="CHA">중국</option>
	                                            <option value="FRA">프랑스</option>
	                                            <option value="DEU">독일</option>
	                                        </select>
	                                        <div class="join-arrow arrow-typ1"></div>
	                                    </li>
	                                    <li class="join-input-box">
	                                        <h2>생녕월일*</h2>
	                                        <select class="join-input input-type3 join-input-year">
	                                            <option>년도 선택</option>
	                                        </select>
	                                        <div class="join-arrow"></div>
	                                        <select class="join-input input-type3 join-input-month"></select>
	                                        <div class="join-arrow"></div>
	                                        <select class="join-input input-type3 join-input-day"></select>
	                                        <div class="join-arrow arrow-typ1"></div>
	                                    </li>
	                                    <li class="join-input-box">
	                                        <h2>이메일*</h2>
	                                        <input type="text" name="email" class="join-input input-type1 join-input-email">
	                                    </li>
	                                    <li class="join-input-box">
	                                        <p>일부 도메인은 수신에 제한이 있을 수 있습니다.</p>
	                                        <p>스팸메일함으로도 수신이 되지 않을 경우,다른 이메일을 사용하시기 바랍니다.</p>
	                                    </li>
	                                </ul>
	                           </div>
	                           <div class="join-userinfo-right">
	                                <ul>
	                                    <li class="join-input-box">
	                                        <h2>이름(영문)*</h2>
	                                        <input class="join-input input-type2 join-input-fristname" placeholder="First Name(이름)">
	                                        <input class="join-input input-type2 join-input-lastname" placeholder="First Name(성)">
	                                        
	                                    </li>
	                                    <li class="join-input-box">
	                                        <h2>휴대폰 번호*</h2>
	                                        <select class="join-input input-type4 join-input-firstnum"></select>
	                                        <div class="join-arrow"></div>
	                                        <input class="join-input input-type4 join-input-phone1"></input>
	                                        <label>-</label>
	                                        <input class="join-input input-type4 join-input-phone2"></input>
	                                    </li>
	                                    <li class="join-input-box">
	                                        <h2>주소</h2>
	                                        <input id="zonecode" type="text" class="join-input  join-input-zonecode">
	                                        <button type="button" class="join-input join-addrbtn">우편번호 검색</button>
	                                        <input id="addr1" type="text" class="join-input input-type1 join-input-addr1">
	                                        <input id="addr2" type="text" class="join-input input-type1 join-input-addr2">
	                                    </li>
	                                </ul>
	                           </div>
	                        </div>
	                    </div>
	                    <div class="join-choice-container">
	                    	<div>
		                    <h3 class="join-choice-h3">마케팅 정보 수신 동의</h3>
	                        <p class="join-choice-p">수신 동의를 하시면, 신라호텔 포인트 및 이벤트 소식을 전해 드립니다.(예약 및 구매 관련 발송 내역은 제외)</p>
	                        </div>
	                        <input class="join-marketing" id="join-marketing"type="checkbox">
                            <label class="btn" for="join-marketing"><span class="join-marketing-point">수신동의</span></label>
	                    </div>
	                    <div class="join-block"></div>
	                    <div class="join-submit-btn-container">
	                        <button type="button" class="join-submit-btn">확인</button>
	                    </div>
	                </div>
	            </div>
	        </article>
	    </main>
	</form>
	<%@ include file="../../footer.jsp" %>
	<script>
        $(".join-getid").click(function(){
            let checked  = $("input[id=join-getid]:checked").val();
            if(checked == "on"){
                let id = $("input[name=id]").val()
                $("input[name=email]").val(id);
                $(".join-getid-point").addClass("join-id-checked");
            }else{
                $("input[name=email]").val("");
                $(".join-getid-point").removeClass("join-id-checked");
            }
        })
        
         $(".join-marketing").click(function(){
            let checked  = $("input[id=join-marketing]:checked").val();
            if(checked == "on"){
                $(".join-marketing-point").addClass("join-marketing-checked");
            }else{
                $(".join-marketing-point").removeClass("join-marketing-checked");
            }
        })
        
       	$(".join-addrbtn").click(function(){
			new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
		            //alert(data.address);
		            $("#zonecode").val(data.zonecode);
		            $("#addr1").val(data.address);
		            $("#addr2").focus();
		        }
		    }).open(); 
			});
    </script>
</body>
</html>