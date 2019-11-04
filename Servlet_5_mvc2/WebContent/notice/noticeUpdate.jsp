<%@page import="com.iu.notice.NoticeDTO"%>
<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

int num = Integer.parseInt(request.getParameter("num"));

NoticeDAO noticeDAO = new NoticeDAO();
Connection con = DBConnector.getConnection();
NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, num);
con.close();


%>
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
	

	/* if(memberDTO == null && memberDTO.getId().equals(noticeDTO.getWriter())){
		String msg = "권한이 없습니다.";
		
		request.setAttribute("msg", msg);
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	} */

%>
<div class="container">
  <h2>공지사항 수정</h2>
  <form action="./noticeUpdateResult.jsp" method=get>
    <div class="form-group">
      <label for="title">Title </label>
      <input type="hidden" name="num" value="<%= noticeDTO.getNum() %>">
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" value="<%= noticeDTO.getTitle() %>">
    <input type="text" class="form-control" id="writer" placeholder="Enter Writer" name="writer" value="<%= noticeDTO.getWriter() %>" readonly="readonly">
    </div>
    	<textarea rows="30" cols="154" id="contents" placeholder="Enter Contents" name="contents"><%= noticeDTO.getContents() %></textarea>
    
    <button type="submit" class="btn btn-default">Update</button>
    </form>
    </div>
</body>
</html>