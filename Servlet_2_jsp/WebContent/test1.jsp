<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int num = 10;
	public void test(){}
%>

<%
	//자바 코드 작성
	Random r = new Random();
	int num = r.nextInt();
	test();

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Test1 Page</h1>
	<h3><%-- <%= r.nextInt() %> --%></h3>
	<img alt="" src="./imgs/<%=num %>.jpg">
</body>
</html>