<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.red{
	color:red;
}
.blue{
	color:blue;
}
</style>
</head>
<body>
	
	<p><input type="password" id="pw"></p>
	<p><input type="password" id="pw2"></p>
	<div id="result"></div>
	<p><button id="btn">JOIN</button></p>
	<script type="text/javascript">
		var pw = document.getElementById("pw");
		var pw2 = document.getElementById("pw2");
		var result = document.getElementById("result");
		var btn = document.getElementById("btn");
		var flag = false;
		
		pw.addEventListener("change", function() {
			pw2.value = "";
			flag = false;
			result.innerHTML = "";
		});
		
		pw2.addEventListener("blur", function() {
			var msg = "비밀번호가 일치하지 않습니다.";
			result.setAttribute("class","red");
			if(pw.value==pw2.value){
				msg ="비밀번호가 일치합니다.";
				result.setAttribute("class","blue");
				flag = true;
			}else{
				flag = false;
			}
			result.innerHTML = msg;
		});
	
		//btn
		btn.addEventListener("click", function() {	
			if (flag) {
				
				alert("비밀번호가 일치합니다.");
				location.href = "./formEvent_1.jsp";
				
			}else{
				alert("비밀번호가 일치하지 않습니다.");
			}
		});
		
	
	
	
	</script>
	
</body>
</html>