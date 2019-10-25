<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShakeShack</title>
<link href="../css/reset.css" rel="stylesheet">
<link href="../css/layout.css" rel="stylesheet">
</head>
<body>
	<!-------------------------------- Header -------------------------------->
	<header>
		<div class="header">
			<div class="headerWrap">
				<div class="header-box">
					<ul class="header_nav_left">
						<li><a href="/Html_ex3/notice/noticeList.jsp">NOTICE</a></li>
						<li><a href="/Html_ex3/menu/menu.jsp">MENU</a></li>
					</ul>
					<div class="headerlogo">
						<a href="/Html_ex3/index.jsp"><img id="logo" alt="#"
							src="/Html_ex3/imgs/common/ss_logo.png"></a>
					</div>
					<ul class="header_nav_right">
						<li><a href="/Html_ex3/member/login.jsp">LOGIN</a></li>
						<li><a href="https://www.shakeshack.com/">INTERNATINAL</a></li>
						<li><a href="/Html_ex3/qna/qnaList.jsp">Q&A</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!--------------------------------- Main --------------------------------->
	<section id="login_main2">
		<div class="main_sub">
			<img id="visual" alt="#" src="/Html_ex3/imgs/common/main_visual6.jpg">
		</div>
		<div class="logininfo">

			<table class="login_table">
				<tr>
					<td>I D :</td>
					<!-- 6자 이상 -->
					<td><input type="text" placeholder="ID를 입력하세요." name="id"
						size="60" style="color: #60ae2b" id="id"></td>
				</tr>
				<tr>
					<td></td>
					<td><div id="idResult"></div>
						<button id="btn">중복 확인</button></td>
				</tr>
				<tr>
					<td>P W :</td>
					<!-- 8자 이상 -->
					<td><input type="password" placeholder="PW를 입력하세요." name="pw"
						size="60" style="color: #60ae2b" id="pw"></td>
				</tr>
				<tr>
					<td>PW Check :</td>
					<td><input type="password" placeholder="PW를 다시 입력하세요."
						name="pw2" size="60" style="color: #60ae2b" id="pw2"></td>
				</tr>
				<tr>
					<td></td>
					<td><div id="pwResult"></div></td>
				</tr>
				<tr>
					<td>NAME :</td>
					<!-- 최소 한글자 -->
					<td><input type="text" placeholder="NAME을 입력하세요." name="name"
						size="60" style="color: #60ae2b" id="name"></td>
				</tr>
				<tr>
					<td></td>
					<td><div id="nameResult"></div></td>
				</tr>
			</table>
			<table class="gender">
				<tr>
					<td>남자</td>
					<td>여자</td>
				</tr>
				<tr>
					<td><input type="radio" checked="checked" name="gender"></td>
					<td><input type="radio" name="gender"></td>
				</tr>
			</table>
			<table class="login_table">
				<tr>
					<td>PHONE :</td>
					<td><input type="text" placeholder="PHONE NUMBER를 입력하세요."
						name="phone" size="60" style="color: #60ae2b" id="phone"></td>
				</tr>
				<tr>
					<td></td>
					<td><div id="phoneResult"></div></td>
				</tr>
				<tr>
					<td>E-MAIL :</td>
					<td><input type="email" placeholder="E-MAIL를 입력하세요."
						name="email" size="60" style="color: #60ae2b" id="email"></td>
				</tr>
				<tr>
					<td></td>
					<td><div id="emailResult"></div></td>
				</tr>
			</table>
			<div class="loginwrite">
				<form action="../index.jsp" method="get">
					<div class="lw1">
						<input type="submit" title="회원가입" value="회원가입" class="btn_global"
							>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-------------------------------- Footer -------------------------------->
	<footer class="footer">
		<div class="footerbody">
			<div class="foottext">
				<ul>
					<li class="t1">FOR YOU</li>
					<li><a href="https://homevoc.spc.co.kr/Voc/created.ub">고객센터</a></li>
					<li><a
						href="http://www.spc.co.kr/spc/smile/group/GEM_info.spc">윤리신고센터</a></li>
					<li><a href="http://www.spc.co.kr/">SPC 홈페이지</a></li>
				</ul>
			</div>
			<div class="foottext">
				<ul>
					<li class="t1">SHAKE SHACK</li>
					<li><a
						href="http://www.jobkorea.co.kr/Recruit/GI_Read/27605169?Oem_Code=C1">채용
							안내</a></li>
					<li><a href="http://www.shakeshack.kr/location/location01.jsp">매장
							안내</a></li>
					<li><a
						href="https://www.shakeshack.com/stand-for-something-good/">미국
							블로그</a></li>
				</ul>
			</div>
			<div class="foottext">
				<ul>
					<li class="t1">SOCIAL</li>
					<li><a href="https://www.facebook.com/shakeshackkorea">페이스북</a></li>
					<li><a href="https://www.instagram.com/shakeshackkr/">인스타그램</a></li>
					<li><a
						href="https://www.youtube.com/channel/UCw86ggEkvY8_RXpvCFjNS6g">유튜브</a></li>
					<li><a href="https://twitter.com/@shakeshackkr">트위터</a></li>
				</ul>
			</div>
			<div class="footercopy">
				<div class="copy">
					<p class="copy1">
						<img alt="#" src="/Html_ex3/imgs/common/ss_logo_footer.png">
					</p>
					<p class="copy1">2004-2016 SHAKE SHACK. ALL RIGHTS RESERVED.</p>
					<p class="copy1">
						SOME INFORMATION ON THIS SITE MAY VARY SLIGHTLY BY<br>
						LOCATION AND IN STADIUMS,<br> EVENT VENUES AND INTERNATIONAL
						SHACKS.
					</p>
					<p class="copy2">
						<a href="http://www.shakeshack.kr/cs/cctv.jsp">영상정보처리기기운영·관리방침</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<script type="text/javascript">
		var btn = document.getElementById("btn");
		//id
		var id = document.getElementById("id");
		var idResult = document.getElementById("idResult");
		//pw
		var pw = document.getElementById("pw");
		var pw2 = document.getElementById("pw2");
		var pwResult = document.getElementById("pwResult");
		//name
		var name1 = document.getElementById("name");
		var nameResult = document.getElementById("nameResult");
		//phone
		var phone = document.getElementById("phone");
		var phoneResult = document.getElementById("phoneResult");
		//email
		var email = document.getElementById("email");
		var emailResult = document.getElementById("emailResult");
		var flag = false;
		
		//아이디 중복 확인
		btn.addEventListener(
						"click",
						function() {
							open("./join_sub.jsp", "",
									"width = 600px, height = 300px, top = 200px, left = 300px");
						});
		//아이디 확인
		/* id.addEventListener("focus", function() {
				this.style.backgroundColor = "red";
			});
			
			id.addEventListener("change", function() {
				this.style.backgroundColor = "blue";
			}); */

		id.addEventListener("blur", function() {
			idResult.innerHTML = "id를 6자리 이상 입력하세요.";
			idResult.setAttribute("class", "red");
			if (idCheck(this.value)) {
				idResult.innerHTML = "";
				idResult.setAttribute("class", "blue");
			}
		});

		function idCheck() {
			if (id.value.length >= 6) {
				return true;

			} else {
				return false;

			}
		}

		//패스워드 확인
		pw.addEventListener("blur", function() {

			pwResult.setAttribute("class", "red");
			if (pwCheck(pw.value)) {
				msg = "";
				pwResult.setAttribute("class", "blue");
			} else if (!pwCheck(pw.value)) {
				var msg = "비밀번호를 8자리 이상 입력하세요.";
			}
			pwResult.innerHTML = msg;
		});

		function pwCheck() {
			if (pw.value.length >= 8) {
				return true;

			} else {
				return false;

			}
		}

		pw2.addEventListener("blur", function() {

			if (pw.value == pw2.value && pw.value.length >= 8) {
				msg = "비밀번호가 일치합니다.";
				pwResult.setAttribute("class", "blue");
				flag = true;
			} else if (pw.value != pw2.value && pw.value.length < 8) {
				var msg = "비밀번호가 일치하지 않습니다.";
				pwResult.setAttribute("class", "red");
				flag = false;
			}
			pwResult.innerHTML = msg;
		});

		pw.addEventListener("change", function() {
			pw2.value = "";
			flag = false;
			pwResult.innerHTML = "";
		});
		
		//이름 확인
		name1.addEventListener("blur", function() {
			nameResult.innerHTML = "이름을 입력하세요.";
			nameResult.setAttribute("class", "red");
			if (nameCheck(this.value)) {
				nameResult.innerHTML = "";
				nameResult.setAttribute("class", "blue");
			}
		});

		function nameCheck() {
			if (name1.value.length >= 1) {
				return true;

			} else {
				return false;

			}
		}
		
		
		//폰 번호 확인
		phone.addEventListener("blur", function() {
			phoneResult.innerHTML = "핸드폰 번호를 입력하세요.";
			phoneResult.setAttribute("class", "red");
			if (phoneCheck(this.value)) {
				phoneResult.innerHTML = "";
				phoneResult.setAttribute("class", "blue");
			}
		});

		function phoneCheck() {
			if (phone.value.length >= 1) {
				return true;

			} else {
				return false;

			}
		}
		//이메일 확인
		email.addEventListener("blur", function() {
			emailResult.innerHTML = "이메일을 입력하세요.";
			emailResult.setAttribute("class", "red");
			if (emailCheck(this.value)) {
				emailResult.innerHTML = "";
				emailResult.setAttribute("class", "blue");
			}
		});

		function emailCheck() {
			if (email.value.length >= 1) {
				return true;

			} else {
				return false;

			}
		}
	</script>
</body>
</html>