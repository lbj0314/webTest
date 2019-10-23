<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<p>
			ALL<input type="checkbox" class="c" id="all">
		</p>
		<p>
			CHECK1<input type="checkbox" class="c" id="c1">
		</p>
		<p>
			CHECK2<input type="checkbox" class="c" id="c2">
		</p>
		<p>
			CHECK3<input type="checkbox" class="c" id="c3">
		</p>
		<p>
			<button id="btn">CLICK</button>
		</p>
	</div>
	<script type="text/javascript">
		//1. all 기능
		//2. all 체크 되어있고 1,2,3 하나라도 선택하면 all 풀기
		//2. 123 기능
		//3. 3개 다 클릭되면 all 선택
		//4. 체크 되었는지 확인

		//1.
		var all = document.getElementById("all");
		all.addEventListener("click", function() {
			var c = document.getElementsByClassName("c");
			if (c[0].checked) {
				for (var i = 1; i < c.length; i++) {
					c[i].checked = true;
					console.log("checked");
				}
			} else if (!c[0].checked) {
				for (var j = 1; j < c.length; j++) {
					c[j].checked = false;
					console.log("unchecked");
				}
			}
		});

		//2.	
		var c1 = document.querySelector("#c1");
		c1.addEventListener("click", function() {
			var c = document.getElementsByClassName("c");
			
				if (c[0].checked || c[1].checked) {
					c[0].checked = false;
					console.log("c1");
				}
			
		});
		var c2 = document.querySelector("#c2");
		c2.addEventListener("click", function() {
			var c = document.getElementsByClassName("c");
			
				if (c[0].checked || c[2].checked) {
					c[0].checked = false;
					console.log("c2");
				}
			
		});
		var c3 = document.querySelector("#c3");
		c3.addEventListener("click", function() {
			var c = document.getElementsByClassName("c");
			
				if (c[0].checked || c[3].checked) {
					c[0].checked = false;
					console.log("c3");
				}
			
		});
		//3. 3개 다 클릭 되면 all 체크
		var all2 = document.querySelector(".c");
		all2.addEventListener("click", function() {
			var c = document.getElementsByClassName("c");

			if (c[0].checked==false || c[1].checked || c[2].checked || c[3].checked) {
				c[0].checked = true;
				console.log("all2");
			}

		});
		//4. 체크 되었는지 확인
		var btn = document.querySelector("#btn");
		btn.addEventListener("click", function(){
			var c = document.querySelector(".c");
			
			for (var i = 0; i < c.length; i++) {
				if (c[i].checked) {
					console.log("check"+i+"가 체크됨.");
				}
			}
			
			
		});
		
		
		//alert("test");
		/* 
		 else if (!c[0].checked || c[1].checked || c[2].checked
		 || c[3].checked) {
		 c[0].checked = true;
		 } */
	</script>
</body>
</html>