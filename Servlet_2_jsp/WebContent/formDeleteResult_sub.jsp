<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
	<h1>정말 지우시겠습니까?</h1>
	<input type="button" value="삭제" id="del">
	<input type="button" value="취소" id="cancel">
	</form>
<script type="text/javascript">
	var del = document.getElementById("del");
	var cancel = document.getElementById("cancel");
	
	del.addEventListener("click", function() {
		alert("삭제되었습니다.");
		self.close;
	});
	cancel.addEventListener("click", function() {
		alert("취소되었습니다.");
		self.close;
	});
	
	
</script>
	
</body>
</html>