package com.coo.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	
	
	public static Connection getConnection() throws Exception{
		
		String user = "user11";
		String password = "user11";
		String url = "jdbc:oracle:thin:@192.168.56.101:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		Class.forName(driver);
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		return con;
	}
	

}
