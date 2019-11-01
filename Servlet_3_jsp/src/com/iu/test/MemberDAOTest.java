package com.iu.test;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;


import com.iu.member.MemberDAO;
import com.iu.member.MemberDTO;
import com.iu.util.DBConnector;

	public class MemberDAOTest {
	
	@Test
	public void test() throws Exception{
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("momo");
		memberDTO.setPw("momo");
		memberDTO = memberDAO.memberLogin(con, memberDTO);
		
		assertNotNull(memberDTO);
		
	}
		
		
	//@Test
	public void insert() throws Exception {
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setId("c");
		memberDTO.setPw("cc");
		memberDTO.setName("ccc");
		memberDTO.setEmail("cccc");
		memberDTO.setPhone("ccccc");
		
		int result =  memberDAO.insert(con, memberDTO);
	
		assertEquals(1, result);
	}

	//@Test
	public void delete() throws Exception {
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		
		int result =  memberDAO.delete(con, "a");
	
		assertEquals(1, result);
	}
	
	//@Test
	public void update() throws Exception {
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setId("c");
		memberDTO.setPw("ppp");
		memberDTO.setName("pppp");
		memberDTO.setEmail("ppppp");
		memberDTO.setPhone("ppppppp");
		
		int result = memberDAO.update(con, memberDTO);
		
		assertEquals(1, result);
	}
	
	//@Test
	public void selectOne() throws Exception {
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
	
		
		MemberDTO memberDTO =   memberDAO.selectOne(con, "c");
		
		assertNotNull(memberDTO);
	
	
	}
	
}
