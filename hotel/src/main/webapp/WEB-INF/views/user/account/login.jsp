<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/hotel/resources/css/account.css">
<script src="http://localhost:9000/hotel/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/hotel/resources/js/myhotel_jquery.js"></script>
<script>
let join_result = '${join_result}';
let login_result = '${login_result}';
let auth_result = '${auth}';

if(auth_result == "fail"){
	alert("접근 권한이 없습니다. 로그인을 진행해 주세요.");
}

if(login_result == 'fail'){
	alert("아이디 또는 패스워드가 다릅니다. 다시 로그인해주세요");	
}

if(join_result == 'ok'){
	alert("회원가입에 성공하셨습니다.");
}

</script>

</head>
<body>
<%@ include file="../../header.jsp" %>
    <section>
        <div class="login-content">
        	<div class="loginintro">
                <h1>로그인</h1>
                <p>신라스테이 광화문에 오신 것을 환영합니다.</p>
                <p>로그인을 하시고 더 편리하게 이용하세요.</p>
            </div>
            <div class="login-container">
                <div class="login-container-left">
                    <div class="login-type">
                        <div class="login-type-btns login-user-selected">
                            <a class="login-type-btn" href="javascript:showMember()">회원</a>
                        </div>
                        <div class="login-type-btns login-nonmember">
                           <a class="login-type-btn" href="javascript:showNonMemeber()">비회원</a>
                        </div>
                    </div>
					<form class="loginMemberform"name= "loginForm" action="loginCheck.do" method="post">
                        <div>
                            <input type="text" id="mid" name="mid" class="login-input" placeholder="아이디를 입력해 주세요.">   
                            <input type="password" id="pass" name="pass" class="login-input" placeholder="비밀번호를 입력해 주세요.">    
                        </div>
                        <div>
                            <button type="submit" id="btnLogin" class="login-btn btn">로그인</button>
                        </div>
                        <div class="login-find-acount">
                            <a class="login-find-acount-link" href="search.do">아이디/비밀번호 찾기</a>
                        </div>
                    </form>
					<form class="loginNonMemberform"name= "loginForm" action="loginNonMember.do" method="post">
                        <div>
                            <input type="text" id="login-reservationNumber" name="reservationNumber" class="login-input" placeholder="예약번호">   
                            <input type="password" id="login-name" name="name" class="login-input" placeholder="이름">    
                            <select id ="phone-first"class="join-input login-phone-type1 join-input-firstnum">
                            </select>
                            <div class="join-arrow"></div>
                            <input id="phone-mid" class="join-input login-phone join-input-phone1"></input>
                            <label>-</label>
                            <input id="phone-last" class="join-input login-phone join-input-phone2"></input>
                        </div>
                        <div>
                            <button type="button" id="Nonmemberlogin" class="login-btn btn">예약내역조회</button>
                        </div>
                    </form>
                      
                	</div>
                	<div class="login-block">
                	</div>
                	<div class="login-container-right">
                    	<div class="login-join-text">
	                        <p>아직 회원이 아니신가요?</p>
	                        <p>회원이 되시면 신라스테이 회원으로서</p>
	                        <p>더 큰 혜택과 편리함을 누릴 수 있습니다.</p>
	                    </div>
                    <div>
                        <a class="login-join-acount" href="http://localhost:9000/hotel/shillaStay/join/termsOfService.do">회원가입</a>
                    </div>
                </div>
            </div>
        </div>
	</section>
<%@ include file="../../footer.jsp" %>
<script>
	function showNonMemeber(){
		$(".loginMemberform").css("display","none");
		$(".loginNonMemberform").css("display","block")
		$(".login-user-selected").addClass("login-user")
		$(".login-user-selected").removeClass("login-user-selected")
		$(".login-nonmember").addClass("login-nonmember-selected")
		$(".login-nonmember").removeClass("login-nonmember")
		
	}
	function showMember(){
		$(".loginMemberform").css("display","block");
		$(".loginNonMemberform").css("display","none");
		$(".login-user").addClass("login-user-selected")
		$(".login-user").removeClass("login-user")
		$(".login-nonmember-selected").addClass("login-nonmember")
		$(".login-nonmember-selected").removeClass("login-nonmember-selected")
	}
	$("#Nonmemberlogin").click(function(){
		let res = $("#login-reservationNumber");
		let name = $("#login-name");
		let phone_first = $("#phone-first");
		let phone_mid = $("#phone-mid");
		let phone_last = $("#phone-last");
		if(res.val() == ""){
			alert("예약번호를 입력해 주세요");
			res.focus();
			return false
		}else if(name.val() == ""){
			alert("이름을 입력해 주세요")
			name.focus();
			return false;
		}else if(phone_first.val() == "" || phone_mid.val() == "" || phone_last.val() == "" ){
			alert("전화번호를 입력해 주세요")
			return false;
		}else{
			alert("유효성 완료")
		}
	})
</script>
</body>
</html>