<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//1. all 기능
	//2. all 체크 되어있고 1,2,3 하나라도 선택하면 all 풀기
	//3. 3개 다 클릭되면 all 선택
	//4. 체크 되었는지 확인

	window.onload = function() {
		var all = document.getElementById("all");
		var ch = document.getElementsByClassName("ch");

		//1. all 기능
		all.addEventListener("click", function() {
			for (var i = 0; i < ch.length; i++) {
				ch[i].checked = this.checked;
				console.log("all");
			}
		});

		///2. all 체크 되어있고 1,2,3 하나라도 체크가 풀리면 all 풀기
		for (var i = 0; i < ch.length; i++) {

			ch[i].addEventListener("click", function() {
				for (var i = 0; i < ch.length; i++) {
					if (!ch[i].checked) {
						all.checked = false;
					}
				}

			});
		}
		//3. 3개 다 클릭되면 all 선택
		for (var i = 0; i < ch.length; i++) {
			ch[i].addEventListener("click", function(){
				if (ch[i].checked) {
					ch[0].checked = true;
					
				} else if(ch[i].checked){
					ch[0].checked = true;
				} else if(ch[i].checked){
					ch[0].checked = true;
				}
				
			});
			
		}
		
		
		
	}
</script>

</head>
<body>

	<div>
		<p>
			ALL<input type="checkbox" id="all">
		</p>
		<p>
			CHECK1<input type="checkbox" class="ch">
		</p>
		<p>
			CHECK2<input type="checkbox" class="ch">
		</p>
		<p>
			CHECK3<input type="checkbox" class="ch">
		</p>
		<p>
			<button id="btn">CLICK</button>
		</p>
	</div>
</body>
</html>