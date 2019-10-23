<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#f1 {
	display: none;
}

#m1 {
	display: none;
}
</style>


</head>
<body>

	<div>

		F<input class="gender" title="f1" type="radio" value="Female"
			name="gender" checked="checked"> 
			M<input class="gender"
			title="m1" type="radio" value="Male" name="gender">
		<button id="btn">CLICK</button>
	</div>

	<div id="f1">
		<h1>Swiss</h1>
	</div>
	<div id="m1">
		<h1>Russia</h1>
	</div>

	<script type="text/javascript">
		
		
		
		var btn = document.querySelector("#btn");
		//btn.addEventListener("click", function c() {
			//alert(e);
			//var gender = document.getElementsByClassName("gender");
			
			/* for (var i = 0; i < gender.length; i++) {
				if (gender[i].checked) {
					alert(gender[i].value);
					break;
				}
			} */

			//gender[1].setAttribute("checked", true);
		//});
		
		var gender = document.getElementsByClassName("gender");
		/* for(var i = 0; i < gender.length; i++){
		gender[i].addEventListener("click", function (){
			alert(this.title);

		});
		} */
		
		var f1 = document.getElementById("f1").style.display;
		
		for (var i = 0; i < gender.length; i++) {
			if (gender[i].checked) {
				i = "block";
				break;
			}
		}
		
		
		
		
	</script>

</body>
</html>