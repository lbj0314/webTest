<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 쓰기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>공지사항 쓰기</h2>
  <form action="./noticeWriteResult.jsp" method=get>
    <div class="form-group">
      <label for="title">Title </label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title">
    <input type="text" class="form-control" id="writer" placeholder="Enter Writer" name="writer">
    </div>
    	<textarea rows="30" cols="154" id="contents" placeholder="Enter Contents" name="contents"></textarea>
    
    <button type="submit" class="btn btn-default">완료</button>
    </form>
    </div>
</body>
</html>