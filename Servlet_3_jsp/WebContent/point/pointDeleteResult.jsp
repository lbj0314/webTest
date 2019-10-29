<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.point.PointDTO"%>
<%@page import="com.iu.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	PointDTO pointDTO = new PointDTO();

	
	int num = Integer.parseInt(request.getParameter("num"));
	
	
	pointDTO.setNum(num);
	
	PointDAO pointDAO = new PointDAO();
	Connection con = DBConnector.getConnection();
	int result = pointDAO.delete(con, num);
	
	con.close();
	
	String msg = "성적 삭제 실패";
	if(result > 0){
		msg = "성적 삭제 성공";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	alert('<%= msg %>');
	
	location.href="./pointList.jsp";
</script>
</head>
<body>
	
</body>
</html>