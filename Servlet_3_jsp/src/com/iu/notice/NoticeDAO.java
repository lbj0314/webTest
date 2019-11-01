package com.iu.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NoticeDAO {

	//List
	public ArrayList<NoticeDTO> noticeList(Connection con) throws Exception {
		ArrayList<NoticeDTO> ar = new ArrayList<NoticeDTO>();
		NoticeDTO noticeDTO = null;

		String sql = "SELECT * FROM notice ORDER BY num DESC";

		PreparedStatement st = con.prepareStatement(sql);

		ResultSet rs = st.executeQuery();

		while(rs.next()) {
			noticeDTO = new NoticeDTO();

			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setWriter(rs.getString("writer"));
			noticeDTO.setReg_date(rs.getDate("reg_date"));
			noticeDTO.setHit(rs.getInt("hit"));

			ar.add(noticeDTO);

		}
		
		rs.close();
		st.close();
		
		return ar;
	}
	//select
	public NoticeDTO noticeSelect(Connection con, int num) throws Exception {
		NoticeDTO noticeDTO = null;

		String sql = "SELECT * FROM notice WHERE num = ?";

		PreparedStatement st = con.prepareStatement(sql);

		st.setInt(1, num);

		ResultSet rs = st.executeQuery();

		if (rs.next()) {
			noticeDTO = new NoticeDTO();
			
			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setWriter(rs.getString("writer"));
			noticeDTO.setContents(rs.getString("contents"));
			noticeDTO.setReg_date(rs.getDate("reg_date"));
			noticeDTO.setHit(rs.getInt("hit"));

		}
		
		rs.close();
		st.close();

		return noticeDTO;
	}
	//write
	public int noticeWrite(Connection con, NoticeDTO noticeDTO) throws Exception{
		int result = 0;
		
		String sql = "INSERT INTO notice "
				+ "VALUES(notice_seq.nextval, ?, ?, ?, SYSDATE, 0)";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, noticeDTO.getTitle());
		st.setString(2, noticeDTO.getWriter());
		st.setString(3, noticeDTO.getContents());
		
		
		result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	//update
	public int noticeUpdate(Connection con, NoticeDTO noticeDTO) throws Exception{
		int result = 0;
		
		String sql ="UPDATE notice SET title=?, writer=?, contents=?, reg_date=sysdate, hit=0"
				+ " WHERE num = ?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, noticeDTO.getTitle());
		st.setString(2, noticeDTO.getWriter());
		st.setString(3, noticeDTO.getContents());
		st.setInt(4, noticeDTO.getNum());
		
		result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	//delete
	public int noticeDelete(Connection con, int num) throws Exception {
		int result = 0;
		
		String sql = "DELETE notice WHERE num = ?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setInt(1, num);
		
		result = st.executeUpdate();
		
		st.close();
		
		return result;
		
	}

}
