<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="t1">
	
	<script type="text/javascript">
		var t1 = document.getElementById("t1");
		t1.addEventListener("blur",function(){
			var t = t1.value;
			t = parseInt(t);
			
			//t = t * 1;
			alert(t+100);
			
			
			
		});
	
	
	
	</script>

</body>
</html>