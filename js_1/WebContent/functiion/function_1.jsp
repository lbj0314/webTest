<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	var n1 = window.prompt("숫자 입력");//3
	var n2 = window.prompt("숫자2 입력");//2
	
	var f1 = function total(num1, num2) {
		var result = num1 / num2;
		return result;
	}

	function total(num1, num2) {// 매개 변수 선언시 var는 생략
		var result = num1 * num2 * f1(num1, num2);
		console.log(result);//32
	}
	
	total(n1, n2);
	
	
</script>
</head>
<body>
	<h1>function test</h1>
</body>
</html>