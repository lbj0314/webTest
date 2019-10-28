<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String name = request.getParameter("name");
	String k = request.getParameter("kor");
	int kor = Integer.parseInt(k);
	String e = request.getParameter("eng");
	int eng = Integer.parseInt(e);
	String m = request.getParameter("math");
	int math = Integer.parseInt(m);
	int total = kor + eng + math;
	double avg = (double)(total/3);
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
	String sql = "INSERT INTO point VALUES(point_seq.nextval, ?, ?, ?, ?, ?, ?)";
	
	//5. SQL문 미리 전송
	PreparedStatement st = con.prepareStatement(sql);
	
	//6. ? 값 세팅
	st.setString(1, name);
	st.setInt(2, kor);
	st.setInt(3, eng);
	st.setInt(4, math);
	st.setInt(5, total);
	st.setDouble(6, avg);
	
	//7. 최종 전송 후 결과 처리
	int result = st.executeUpdate();
	
	//8. close
	st.close();
	con.close();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Form Test Result Page</h1>
	<h3>Name : <%= name %></h3>
	<h3>Kor : <%= k %></h3>
	<h3>Eng : <%= e %></h3>
	<h3>Math : <%= m %></h3>
	<h3>Total : <%= total %></h3>
	<h3>Avg : <%= avg %></h3>
</body>
</html>