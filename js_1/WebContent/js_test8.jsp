<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#d1{
	width: 100px;
	height: 100px;
	background-color: red;

}

</style>
</head>
<body>
<script type="text/javascript">
	var d2 = 0; //전역 변수

	function go(){
		var d1 = document.getElementById("d1");
		d1.style['border'] = '5px solid black';
		alert(d1.style.border);
	}
	function move(){
		var d1 = document.getElementById("d1");
		d2 = d2 + 20;
		d1.style['margin-left'] = d2 + 'px';
		alert(d1.style.marginLeft);
	}
</script>

	<div id="d1">d1</div>
	<div><button onclick="go()">click</button>
		<button onclick="move()">move</button>
	</div>
	
	
</body>
</html>