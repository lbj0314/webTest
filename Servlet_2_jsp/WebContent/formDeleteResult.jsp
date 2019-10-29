<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int num = Integer.parseInt(request.getParameter("num"));
	//DB 접속
	//1. 로그인 4가지 정보
	String user = "user13";
	String password = "user13";
	String url = "jdbc:oracle:thin:@211.238.142.39:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	//2. driver를 메모리에 로딩 과정
	Class.forName(driver);
	
	//3. 로그인 후 Connection 객체 반환
	Connection con = DriverManager.getConnection(url, user, password);
	
	//4. SQL문 생성
	String sql = "DELETE point WHERE num = ?";
	
	//5. SQL문 미리 전송
	PreparedStatement st = con.prepareStatement(sql);
	
	//6. ? 값 세팅
	st.setInt(1, num);
	
	
	//7. 최종 전송 후 결과 처리
	num = st.executeUpdate();
	
	//8. close
	st.close();
	con.close();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<h1>Form Delete Page</h1>
	<h3>Num : <%= num %></h3>
	<!-- <form action="">
	<h1>정말 지우시겠습니까?</h1>
	<input type="button" value="삭제" id="del">
	<input type="button" value="취소" id="cancel">
	</form> -->
<!-- <script type="text/javascript">
	var del = document.getElementById("del");
	var cancel = document.getElementById("cancel");
	
	$("#del").("click", function() {
		alert("삭제되었습니다.");
		self.close;
	});
	$("#cancel").("click", function() {
		alert("취소되었습니다.");
		self.close;
	});
	
	
</script> -->
	
</body>
</html>