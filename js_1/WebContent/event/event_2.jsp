<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//change : 함수명
	//alert	: click 출력
	function change() {
		/* var i1 = document.getElementById("i1");
		var value = i1.value; */
		alert('click');
	}
	function change2() {
		var img1 = document.getElementById("img1");
		img1.src = "../imgs/momo2.jpg";
		var i = img1.id;
		alert(i);
		img1.id = "img1_1";
		/* img1.class="img3"; */
		
	}
	function go(){
		var img2 = document.getElementById("img2");
		/* var t = img2.innerText;
		alert(t);
		
		img2.innerText = "World"; */
		var t = img2.innerHTML;
		alert(t);
		img2.innerHTML= "<button>BTN2</button>";
		
		
		
	}
	
	
</script>
<style type="text/css">

.img2{
	border: 1px solid red;

}
.img3{
	border: 1px solid blue;
	border-radius: 30px;
}

</style>


</head>
<body>
	<p>
		<img id="img1" class="img2" alt="#" src="../imgs/momo.jpg">
	</p>
<!-- 	<p>
		<input id="i1" type="button" value="click" onclick="change()">
	</p> -->
	<p>
		<input id="i1" type="button" value="click" onclick="change2()">
	</p>
	<p>
		<button onclick="go()">BTN</button>
	</p>
	<div id="img2" class="img3">
		<h1>JavaScript</h1>
		Hello
	</div>
	<input type="text">
	
	<span><a></a></span>
	
	
	
</body>
</html>