<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
  <h2>Point Insert Page</h2>
  <form action="./pointDeleteResult.jsp" method="post">
    <div class="form-group">
      <label for="num">Num : </label>
      <input type="text" class="form-control" id="num" placeholder="Enter Num" name="num">
    </div>
   
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
	
	
</body>
</html>