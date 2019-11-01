<%@page import="com.iu.member.MemberDTO"%>
<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
	MemberDAO memberDAO = new MemberDAO();
	
	Connection con = DBConnector.getConnection();
	
	int result = memberDAO.memberDelete(con, memberDTO);
	
	con.close();
	
	session.invalidate();
	
	if(result > 0){
		response.sendRedirect("../index.jsp");	
		}else{
		String msg = "Delete Fail";		
		request.setAttribute("msg", msg);
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
		}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>