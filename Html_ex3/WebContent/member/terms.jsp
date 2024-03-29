<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShakeShack</title>
<link href="../css/reset.css" rel="stylesheet">
<link href="../css/layout.css" rel="stylesheet">
<script type="text/javascript">
	window.onload = function() {
		var term2 = document.getElementById("term2");
		var term3 = document.getElementById("term3");

		term3.addEventListener("click", function() {
			if (term2.checked) {
				alert("약관에 동의하셨습니다.");
				location.href = "./join.jsp";
			} else {
				alert("약관에 동의해주세요.");
			}
		});

	}
</script>
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
	<section id="login_main">
		<div class="main_sub">
			<img id="visual" alt="#" src="/Html_ex3/imgs/common/main_visual7.jpg">
		</div>
		<div class="logininfo2">
			

				<textarea rows="20" cols="110" disabled="disabled"
					style="background-color: white; color: #60ae2b">
We Stand For Something Good in everything we do. In 2017 we shared our U.S. Animal Welfare Policy to outline our core beliefs and we’re proud to now announce that we’ve committed to the European Chicken Commitment, an effort that will apply even higher animal welfare standards in the UK by 2026.

To our guests: we want you to know that what we serve in our Shacks has been meticulously sourced and cared for, starting with its origin on our supplier’s farms and ranches. We hear you when you ask for nothing but the best for you and your families.

To our suppliers: we want you to know that we deeply value and respect our partnerships and the culture of working together to raise the bar for ourselves and the restaurant industry as a whole.

To our team: we want you to know that you can be proud about the food you’re taking such care to prepare in our kitchens.

In our UK Shacks we’re proud to serve chicken that is free of antibiotics, free of animal byproducts in feed, and humanely raised in a cage-free environment.

But, there are still improvements to be achieved in the way chickens are raised. We are committed to sourcing our chickens using standards aligned with the requirements of the Global Animal Partnership’s Standard for Broiler Chickens in the US by 2024 and the European Chicken Commitment in the UK by 2026.

We Stand For:
• Improving conditions of broiler chickens
• The use of genetics that produce healthier chickens through slower growth
• Giving chickens more space and reducing the maximum stocking density
• Better living conditions including litter, lighting and enrichment

“Shake Shack is proud that we’re on our way to reaching these improved welfare standards in the US by 2024, and we’re pleased to extend this commitment to include the UK by 2026,” said Jeffrey Amoscato, Shake Shack Vice President of Supply Chain & Menu Innovation. “Maintaining the highest standards for animal welfare is our guiding principle, and our team and suppliers are committed to achieving ethical and humane practices for the animals in our supply chain.”

We care deeply about the issues that are important to our guests, so we want to hear from you. If we can ever do anything better, let us know. We’re always listening at share@shakeshack.com and on Twitter at Share on Twitter. Thank you for standing with us!
</textarea>
				<br> <br>
				<div class="terms">
					<input id="term2" type="checkbox" checked="checked" width="12px"
						height="12px">
					<p id="term1" style="color: #60ae2b">약관에 동의하시겠습니까? &nbsp&nbsp</p>
					<br> <input type="submit" value="동의"
						style="color: #60ae2b" id="term3">
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