<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
	window.onload = function() {
		
	var btn = document.getElementById("btn");
		btn.onclick = function(){
			alert("test");
		}
	//////////////////////////////////////////////////
	function c() {
		alert("Test2");
	}
	
		var btn2 = document.querySelector("#btn2");
		btn2.addEventListener("click", c);
		
	}
	
	</script>
</head>
<body>

	<p>
		<button id="btn">CLICK</button>
		<button id="btn2">CLICK</button>
	</p>




</body>
</html>