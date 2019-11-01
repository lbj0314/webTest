<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.member.MemberDAO"%>
<%@page import="com.iu.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	MemberDTO memberDTO = new MemberDTO();
	
	memberDTO.setPw(request.getParameter("pw"));
	memberDTO.setName(request.getParameter("name"));
	memberDTO.setEmail(request.getParameter("email"));
	memberDTO.setPhone(request.getParameter("phone"));
	memberDTO.setId(request.getParameter("id"));
	
	MemberDTO sessionDTO = (MemberDTO)session.getAttribute("member");
	memberDTO.setGrade(sessionDTO.getGrade());
	
	MemberDAO memberDAO = new MemberDAO();
	Connection con = DBConnector.getConnection();
	
	int result = memberDAO.memberUpdate(con, memberDTO);
	
	con.close();
	
	if(result > 0){
		session.setAttribute("member", memberDTO);
		response.sendRedirect("../index.jsp");
	}else{
		String msg = "MemberUpdateFail";
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