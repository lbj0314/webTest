<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.red{
	color: red;
}
.blue{
	color: blue;
}
</style>
</head>
<body>
	<h1>Form Event 1</h1>
	<form action="#">
		<p><input type="text" id="id"></p>
		<div id="idResult"></div>
		<p><input type="password" id="pw"></p>
		<div id="pwResult"></div>
		<p><button>LOGIN</button></p>
	</form>
	<script type="text/javascript">
		var id = document.getElementById("id");
		var idResult = document.getElementById("idResult");
		var pw = document.getElementById("pw");
		var pwResult = document.getElementById("pwResult");
		
		id.addEventListener("focus", function() {
			this.style.backgroundColor = "red";
		});
		
		id.addEventListener("change", function() {
			this.style.backgroundColor = "blue";
		});
		
		
		id.addEventListener("blur", function() {
			var info = this.value;
			var chk = check(info);
			idResult.innerHTML ="id를 6자리 이상 입력";
			idResult.setAttribute("class", "red");
			if (chk) {
				idResult.innerHTML ="id를 정상적으로 입력함";
				idResult.setAttribute("class", "blue");
			}
		});
		
		pw.addEventListener("blur", function() {
			var info = this.value;
			var chk = check(info);
			pwResult.innerHTML ="pw를 6자리 이상 입력";
			pwResult.setAttribute("class", "red");
			if (chk) {
				pwResult.innerHTML ="pw를 정상적으로 입력함";
				pwResult.setAttribute("class", "blue");
			}
		});
		
		function check(info){
			if (info.length >= 6) {
				return true;
			
			} else{
				return false;
			
			}
		}
		
		
	</script>
	
</body>
</html>