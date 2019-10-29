<%@page import="com.iu.point.PointDTO"%>
<%@page import="com.iu.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.iu.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	PointDAO pointDAO = new PointDAO();
	Connection con = DBConnector.getConnection();

	int num = Integer.parseInt(request.getParameter("num"));

	PointDTO pointDTO = pointDAO.selectOne(con, num);




%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="jumbotron">
			<h1>Point Select Page</h1>
			<ul>
				<li>NUM : <%= pointDTO.getNum() %></li>
				<li>NAME : <%= pointDTO.getName() %></li>
				<li>KOR : <%= pointDTO.getKor() %></li>
				<li>ENG : <%= pointDTO.getEng() %></li>
				<li>TOTAL : <%= pointDTO.getTotal() %></li>
				<li>AVG : <%= pointDTO.getAvg() %></li>
			</ul>
		</div>
		<div>
			<a href="./pointUpdateResult.jsp" class="btn btn-danger">Update</a>
			<a href="./pointDeleteResult.jsp?num=<%= pointDTO.getNum() %>" class="btn btn-primary">Delete</a>
		</div>
	</div>

</body>
</html>