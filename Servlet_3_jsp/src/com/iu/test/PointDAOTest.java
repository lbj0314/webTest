package com.iu.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Random;

import org.junit.Test;

import com.iu.notice.NoticeDAO;
import com.iu.notice.NoticeDTO;
import com.iu.point.PointDAO;
import com.iu.point.PointDTO;
import com.iu.util.DBConnector;

public class PointDAOTest {

	//@Test
	public void updateTest() throws Exception{
		PointDTO pointDTO = new PointDTO();
		
		pointDTO.setNum(4215);
		pointDTO.setName("nana");
		pointDTO.setKor(19);
		pointDTO.setEng(66);
		pointDTO.setMath(45);
		pointDTO.setTotal(130);
		pointDTO.setAvg(43.3);
		
		PointDAO pointDAO = new PointDAO();
		Connection con = DBConnector.getConnection();
		
		int result = pointDAO.update(con, pointDTO);
		
		assertEquals(1, result);
	}
	
	//@Test
	public void insertTest() throws Exception{
		PointDAO pointDAO = new PointDAO();
		Connection con = DBConnector.getConnection();

		for(int i = 0; i < 10; i++) {
			Random rs = new Random();

			PointDTO pointDTO = new PointDTO();
			pointDTO.setName("name"+i);
			pointDTO.setKor(rs.nextInt(101));
			pointDTO.setEng(rs.nextInt(101));
			pointDTO.setMath(rs.nextInt(101));
			pointDTO.setTotal(pointDTO.getKor()+pointDTO.getEng()+pointDTO.getMath());
			pointDTO.setAvg(pointDTO.getTotal()/3.0);

			pointDAO.insert(con, pointDTO);
			Thread.sleep(500);
		}
		con.close();
	}

	//@Test
	public void selectListTest() throws Exception{
		PointDAO pointDAO = new PointDAO();		
		Connection con = DBConnector.getConnection();
		ArrayList<PointDTO> ar = pointDAO.selectList(con);

		assertNotEquals(0, ar.size());

		con.close();
	}



	//@Test
	public void selectOneTest() throws Exception{
		PointDAO pointDAO = new PointDAO();
		Connection con = DBConnector.getConnection();
		PointDTO pointDTO = pointDAO.selectOne(con, 23);

		assertNull(pointDTO);

		con.close();

	}



	//@Test
	public void test2() throws Exception {
		Connection con = DBConnector.getConnection();
		assertNotNull(con);

		con.close();
	}


	//@Test
	public void test() throws Exception {

		PointDAO pointDAO = new PointDAO();
		Connection con = DBConnector.getConnection();
		int result = pointDAO.delete(con, 4443);

		//단정문
		assertEquals(1, result);

		con.close();
	}
//notice
	@Test
		public void noticeListTest() throws Exception{
			NoticeDAO noticeDAO = new NoticeDAO();
			Connection con = DBConnector.getConnection();
			ArrayList<NoticeDTO> ar = noticeDAO.noticeList(con);

			assertEquals(0, ar.size());

			con.close();
		}
	
}
