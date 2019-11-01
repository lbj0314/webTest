<%@page import="com.iu.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	NoticeDTO noticeDTO = (NoticeDTO)request.getAttribute("noticeDTO");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<H1 align="center">NOTICE</H1>
<br>
<div class="container">
	<table class="table">
			
			<tr>
			<th>NUM</th>
			<th width="60%">TITLE</th>
			<th>WRITER</th>
			<th>DATE</th>
			<th>HIT</th>
			</tr>
			
			<tr>
					<td><%=noticeDTO.getNum() %> </td>
					<td><%=noticeDTO.getTitle() %></td>
					<td><%=noticeDTO.getWriter() %> </td>
					<td><%=noticeDTO.getReg_date() %> </td>
					<td><%=noticeDTO.getHit() %> </td>
				</tr>
			
	</table>
	<div>
		<textarea rows="30" cols="154" readonly="readonly"><%=noticeDTO.getContents() %> </textarea>
	</div>
		<div>
			<a href="./noticeUpdate.jsp?num=<%= noticeDTO.getNum() %>" class="btn btn-danger">Update</a>
			<a href="./noticeDeleteResult.jsp?num=<%= noticeDTO.getNum() %>" class="btn btn-primary">Delete</a>
			<a href="./noticeList.jsp" class="btn btn-primary">List</a>
		</div>
	</div>
</body>
</html>