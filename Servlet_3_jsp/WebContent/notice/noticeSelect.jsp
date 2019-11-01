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

if(noticeDTO == null){
	String msg = "해당하는 글이 없습니다.";
	request.setAttribute(msg, "msg");
	RequestDispatcher view = request.getRequestDispatcher("./noticeList.jsp");
	view.forward(request, response);
	
}else{
	request.setAttribute("noticeDTO", noticeDTO);
	
	RequestDispatcher view = request.getRequestDispatcher("./noticeSelectResult.jsp");
	view.forward(request, response);
}

%>