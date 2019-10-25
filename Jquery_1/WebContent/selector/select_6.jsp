<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<form action="">
		<div id="files"><input type="file"></div>
		<input type="button" id="add" value="Add File">
	</form>
	<ol id="lists">
		<li>file</li>
	</ol>
	<button id="addList">Add List</button>
	<button id="before">Before</button>
	
	<script type="text/javascript">
		$('#add').click(function() {
			$('#files').append('<input type="file">');
		});
		
		$('#addList').click(function() {
			$('#lists').prepend('<li>file1</li>');
			
		});
		
		$('#before').click(function() {
			$('#lists').before("<h1>Before</h1>");
			$('#lists').after("<h1>After</h1>");
		});
		
	</script>
</body>
</html>