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
	<section id="notice_main2">
		<div class="main_sub">
			<img id="visual" alt="#" src="/Html_ex3/imgs/common/main_visual4.jpg">
		</div>
		<div class="noticeinfo2">
			<h1 align="center" style="color: #60ae2b">Q&A</h1>
			<br>
			<form action="./qnaList.jsp" method="get">
				<table>
					<tr>
						<td class="tw1" style="color: #60ae2b">작성자 :</td>
						<td class="tw2"><input type="text" value="로그인한 ID 이름"
							name="name" disabled="disabled" size="60" style="color: #60ae2b"></td>
					</tr>
					<tr>
						<td style="color: #60ae2b">제목 :</td>
						<td><input type="text" name="content"
							value="ShakeShark의  Q&A 제목" size="60" disabled="disabled" style="color: #60ae2b"></td>
					</tr>
					<tr>
						<td style="color: #60ae2b">내용 :</td>
						<td><textarea rows="30" cols="55" disabled="disabled" style="color: #60ae2b">
ShakeShack의 Q&A 내용
ShakeShack의 Q&A 내용
</textarea></td>

					</tr>
				</table>
			</form>
			<div class="noticewrite">
				<div class="nw1">
					<a href="./qnaList.jsp">뒤로 가기</a>
				</div>
				<div class="nw1">
					<a href="./qnaUpdate.jsp">글 수정</a>
				</div>
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

</body>
</html>