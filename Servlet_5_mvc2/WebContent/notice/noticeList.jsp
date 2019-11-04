<%@page import="com.iu.notice.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	ArrayList<NoticeDTO> ar = (ArrayList<NoticeDTO>)request.getAttribute("list");


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
					<td><a href="./noticeSelect.notice?num=<%= noticeDTO.getNum() %>"><%=noticeDTO.getTitle() %></a></td>
					<td><%=noticeDTO.getWriter() %> </td>
					<td><%=noticeDTO.getReg_date() %> </td>
					<td><%=noticeDTO.getHit() %> </td>
				</tr>
				<%
					}				
				%>
			
		</table>
		<%-- <%if(memberDTO !=null && memberDTO.getGrade() == 0){ %> --%>
	<button type="button" class="btn btn-info" id="btn_write">글쓰기</button>
	<%-- <%} else {%>

	<%} %> --%>
	</div>
	<script type="text/javascript">
	$("#btn_write").click(function() {
		location.href="noticeWrite.notice";
	});

</script>
</body>
</html>