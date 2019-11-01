package com.iu.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {

	//memberUpdate
	public int memberUpdate(Connection con, MemberDTO memberDTO) throws Exception {
		int result = 0;
		
		String sql = "UPDATE member SET pw=?, name=?, email=?, phone=? WHERE id=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getPw());
		st.setString(2, memberDTO.getName());
		st.setString(3, memberDTO.getEmail());
		st.setString(4, memberDTO.getPhone());
		st.setString(5, memberDTO.getId());

		result = st.executeUpdate();

		st.close();

		return result;
	}

	//memberLogin
	public MemberDTO memberLogin(Connection con, MemberDTO memberDTO) throws Exception{

		String sql = "SELECT * FROM member WHERE id=? and pw=?";

		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());

		ResultSet rs = st.executeQuery();

		if(rs.next()) {

			memberDTO.setName(rs.getString("name"));
			memberDTO.setEmail(rs.getString("email"));
			memberDTO.setPhone(rs.getString("phone"));
			memberDTO.setGrade(rs.getInt("grade"));


		}else {
			memberDTO = null;
		}

		rs.close();
		st.close();

		return memberDTO;
	}

	//insert
	public int insert(Connection con, MemberDTO memberDTO) throws Exception {
		int result = 0;

		String sql = "insert into member values (?,?,?,?,?,4)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());
		st.setString(3, memberDTO.getName());
		st.setString(4, memberDTO.getEmail());
		st.setString(5, memberDTO.getPhone());

		result = st.executeUpdate();

		st.close();

		return result;
	}

	//delete
	public int memberDelete(Connection con, MemberDTO memberDTO) throws Exception {
		int result = 0;

		String sql = "DELETE member WHERE id=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getId());

		result = st.executeUpdate();

		st.close();

		return result;
	}



	//selectOne
	public MemberDTO selectOne(Connection con, String id) throws Exception {
		MemberDTO memberDTO = null;

		String sql = "select * from member where id=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, id);

		ResultSet rs = st.executeQuery();

		if(rs.next()) {
			memberDTO = new MemberDTO();
			memberDTO.setId(rs.getString(1));
			memberDTO.setPw(rs.getString(2));
			memberDTO.setName(rs.getString(3));
			memberDTO.setEmail(rs.getString(4));
			memberDTO.setPhone(rs.getString(5));
			memberDTO.setGrade(rs.getInt(6));

		}

		rs.close();
		st.close();

		return memberDTO;
	}
}
