<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");
	String path = (String)request.getAttribute("path");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	location.href='<%= path %>';
	if(msg == !null){
	alert('<%= msg %>');
	location.href='<%= path %>';
	}
</script>
</head>
<body>

</body>
</html>