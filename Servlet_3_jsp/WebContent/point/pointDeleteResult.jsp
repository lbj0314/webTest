<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.point.PointDTO"%>
<%@page import="com.iu.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	int num = Integer.parseInt(request.getParameter("num"));
	
	PointDAO pointDAO = new PointDAO();
	Connection con = DBConnector.getConnection();
	num = pointDAO.delete(con, num);
	
	con.close();
	
	if(num > 0){
		String msg = "성적 삭제 성공";
		
		request.setAttribute("msg", msg);
		request.setAttribute("path", "./pointList.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);

	} else{
		response.sendRedirect("./pointList.jsp");
	}
	
	
	//성공하면 삭제 메시지 alert -> list로
	//실패하면 list로
	
	
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