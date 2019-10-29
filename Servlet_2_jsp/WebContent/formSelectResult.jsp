<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	
    	int num = Integer.parseInt(request.getParameter("num"));
    	
    	//1. 로그인
    	String user = "user13";
    	String password = "user13";
    	String url = "jdbc:oracle:thin:@211.238.142.39:1521:xe";
    	String driver = "oracle.jdbc.driver.OracleDriver";
    	
    	//2. 메모리 로딩
    	Class.forName(driver);
    	
    	//3. connection 객체 변환
    	Connection con = DriverManager.getConnection(url, user, password);
    	
    	//4. sql 생성
    	String sql = "SELECT * FROM point WHERE num= ? ";
    	
    	//5. SQL 문 미리 전송
    	PreparedStatement st = con.prepareStatement(sql);
    	
    	
    	//6. 값 세팅
    	st.setInt(1, num);
    	
    	//7. 최종 전송 후 결과 처리
    	ResultSet rs = st.executeQuery();
    	
    	int n = 0;
    	String name = "";
    	int kor = 0;
    	int eng = 0;
    	int math = 0;
    	int total = 0;
    	double avg = 0.0;
    
    	if(rs.next()){
    		n = rs.getInt("num");
    		name = rs.getString("name");
    		kor = rs.getInt("kor");
    		eng = rs.getInt("eng");
    		math = rs.getInt("math");
    		total = rs.getInt("total");
    		avg = rs.getDouble("avg");
    	}
    	
    	//8. 닫기
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
	<h1>Form Delete Result Page</h1>
	<h3>Num : <%= num %></h3>
	<h3>Name : <%= name %></h3>
	<h3>Kor : <%= kor %></h3>
	<h3>Eng : <%= eng %></h3>
	<h3>Math : <%= math %></h3>
	<h3>Total : <%= total %></h3>
	<h3>Avg : <%= avg %></h3>
	
	
</body>
</html>