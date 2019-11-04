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

<%
	/* if(memberDTO == null || memberDTO.getGrade() != 0){
		String msg = "권한이 없습니다.";
		
		request.setAttribute("msg", msg);
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	} */

%>

<div class="container">
  <h2>공지사항 쓰기</h2>
  <form action="./noticeWrite.notice" method=post>
    <div class="form-group">
      <label for="title">Title </label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title">
   
    <input type="text" class="form-control" id="writer" name="writer" value="<%-- <%= memberDTO.getId() %> --%>" readonly="readonly">
   
    </div>
    	<textarea rows="30" cols="154" id="contents" placeholder="Enter Contents" name="contents"></textarea>
    
    <button type="submit" class="btn btn-default">완료</button>
    &nbsp;<input type="reset" class="btn" value="취소" id="cancel">
    </form>
    </div>
<script type="text/javascript">
	$("#cancel").click(function () {
		location.href= "./noticeList.notice";
	});
</script>
</body>
</html>