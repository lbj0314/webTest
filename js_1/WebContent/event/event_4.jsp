<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function click() {
		 var i1 = document.getElementById("i1").value;

		if (i1 != "") {
			alert("OK");
		} else {
			alert("다시 입력하세요.");
		}
	}
</script>

</head>
<body>

	<input type="text" id="i1">
	<button onclick="click()">Click</button>



</body>
</html>