package com.test.notice;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.iu.notice.NoticeDAO;
import com.iu.util.DBConnector;

public class NoticeDAOTest {
	
	private NoticeDAO noticeDAO;
	private Connection con;
	
	public NoticeDAOTest(){
	
		noticeDAO = new NoticeDAO();
	}
	
	
	//@BeforeClass
	public static void beforeClass() {
		System.out.println("before Class");
	}
	
	//@AfterClass
	public static void afterClass() {
		System.out.println("after Class");
	}
	
	@Before
	public void before() throws Exception {
		System.out.println("Before");
		con = DBConnector.getConnection();
		con.setAutoCommit(false);
	}

	@After
	public void after() throws Exception {
		System.out.println("After");
		//con.commit();
		con.rollback();
		con.setAutoCommit(true);
		con.close();
	}
	
	@Test
	public void listTest() throws Exception{
		noticeDAO.noticeList(con);
	}
	
	@Test
	public void selectTest() throws Exception {
		noticeDAO.noticeSelect(con, 1);
	}
	
}
