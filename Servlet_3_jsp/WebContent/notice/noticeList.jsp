<%@page import="com.iu.member.MemberDTO"%>
<%@page import="com.iu.notice.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

NoticeDAO noticeDAO = new NoticeDAO();
Connection con = DBConnector.getConnection();

ArrayList<NoticeDTO> ar = noticeDAO.noticeList(con);

MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
table{
text-align: center;
}

</style>
</head>
<body>
<H1 align="center">NOTICE LIST</H1>
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
			
			
				<%
					for(int i = 0; i < ar.size(); i++){
						NoticeDTO noticeDTO = ar.get(i);
				%>
				<tr>
					<td><%=noticeDTO.getNum() %> </td>
					<td><a href="./noticeSelect.jsp?num=<%= noticeDTO.getNum() %>"><%=noticeDTO.getTitle() %></a></td>
					<td><%=noticeDTO.getWriter() %> </td>
					<td><%=noticeDTO.getReg_date() %> </td>
					<td><%=noticeDTO.getHit() %> </td>
				</tr>
				<%
					}				
				%>
			
			
			
		</table>
		<%if(memberDTO.getGrade() == 0){ %>
	<a href="./noticeWrite.jsp" class="btn btn-primary">공지사항 글 쓰기</a><br><br>
	<%} else {%>

	<%} %>
	</div>
</body>
</html>