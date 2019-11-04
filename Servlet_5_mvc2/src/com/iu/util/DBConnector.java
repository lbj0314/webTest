package com.iu.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	
	public static Connection getConnection() throws Exception {
		Connection con = null;
		
		//1. 로그인
    	String user = "user13";
    	String password = "user13";
    	String url = "jdbc:oracle:thin:@211.238.142.39:1521:xe";
    	String driver = "oracle.jdbc.driver.OracleDriver";
    	
    	//2. 메모리 로딩
    	Class.forName(driver);
    	
    	//3. connection 객체 변환
    	con = DriverManager.getConnection(url, user, password);
		
		return con;
	}
	
	
}
