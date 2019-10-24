<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="id">
	<button id="btn">CLICK</button>
	
	
<script type="text/javascript">
	var btn = document.getElementById("btn");
	
	btn.addEventListener("click", function() {
		window.open("./winTest1_sub.jsp","",
				"width = 600px, height = 300px, top = 200px, left = 300px");
	});
	


</script>	
	
	
</body>
</html>