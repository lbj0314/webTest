<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		var id = document.getElementById("id").value;
		var pw = document.getElementById("pw").value;
		
		
		
		if (id == "" || pw =="") {
			alert('id나 pw를 입력하세요.');
			
		} else {
			alert('로그인이 완료되었습니다.');
		}
	}
	function check2() {
		var id = document.getElementById("id").value;
		var pw = document.getElementById("pw").value;
		
		
		
		if (id == "" || pw =="") {
			alert('id나 pw를 입력하세요.');
			
		} else {
			alert('로그인이 완료되었습니다.');
		}
		return false;
	}
</script>

</head>
<body>
	<h1>Login Page</h1>
	<form action="../index.jsp">
		<p>
			<input type="text" id="id">
		</p>
		<p>
			<input type="password" id="pw">
		</p>
		<p>
			<button onclick="return check2()">login</button>
		</p>
		<p>
			<input type="submit">
		</p>
		<p>
			<input type="button" value="LogIn" onclick="check()">
		</p>

	</form>


</body>
</html>