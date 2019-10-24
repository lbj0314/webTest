<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<button id="btn">Start</button>
		<button id="stop">Stop</button>
	</div>
	<img alt="#" src="../imgs/momo.jpg" id="img">
	<script type="text/javascript">
		var btn = document.getElementById("btn");
		var stop = document.getElementById("stop");
		var img = document.getElementById("img");
		var index = 0;
		var imgs = ["momo.jpg", "momo2.jpg", "sana2.jpg"];
		var myInterval;
		btn.addEventListener("click", function() {
			myInterval = setInterval(function() {
				index++;
				/* if (index > 2) {
					index = 0;
				} */
				var i = index%imgs.length;
				
				
				img.src="../imgs/"+imgs[i];
			}, 500);
		});
		
		stop.addEventListener("click", function() {
			clearInterval(myInterval);
		});
		
		
		
		//2개 일때
		/* var flag = true;
		
		btn.addEventListener("click", function() {
			setInterval(function(){
				
				
					if (flag) {
				img.src="../imgs/momo2.jpg";
				flag = !flag;
					}else if(!flag){
						img.src="../imgs/momo.jpg";
						flag = !flag;
					}
				
				
			}, 500);
		}); */
	
	
	</script>

</body>
</html>