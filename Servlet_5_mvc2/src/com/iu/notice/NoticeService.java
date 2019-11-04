package com.iu.notice;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iu.action.ActionForward;
import com.iu.util.DBConnector;

public class NoticeService {

	private NoticeDAO noticeDAO;
	private NoticeDTO noticeDTO;

	public NoticeService() {
		noticeDAO = new NoticeDAO();
		noticeDTO = new NoticeDTO();
	}

	public ActionForward noticeList(HttpServletRequest request, HttpServletResponse response) {
		//DAO 보내기 전 전처리 작업
		//DAO 호출 후 후처리 작업
		ActionForward actionForward = new ActionForward();
		try {
			Connection con = DBConnector.getConnection();
			ArrayList<NoticeDTO> ar = noticeDAO.noticeList(con);
			con.close();
			request.setAttribute("list", ar);
			actionForward.setFlag(true);
			actionForward.setPath("./noticeList.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}

		return actionForward;
	}

	public ActionForward noticeSelect(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		try {
			Connection con = DBConnector.getConnection();
			int num = Integer.parseInt(request.getParameter("num"));
			noticeDTO = noticeDAO.noticeSelect(con, num);
			if(noticeDTO != null) {
				request.setAttribute("dto", noticeDTO);
				actionForward.setFlag(true);
				actionForward.setPath("./noticeSelect.jsp");
			} else {
				actionForward.setFlag(false);
				actionForward.setPath("./noticeList.notice");
			}

			con.close();
		}catch (Exception e) {

		}

		return actionForward;
	}

	public ActionForward noticeWrite(HttpServletRequest request, HttpServletResponse response) {

		ActionForward actionForward = new ActionForward();

		String method = request.getMethod();
		if(method.equals("POST")) {
			try {
				Connection con = DBConnector.getConnection();
				noticeDTO.setTitle(request.getParameter("title"));
				noticeDTO.setWriter(request.getParameter("writer"));
				noticeDTO.setContents(request.getParameter("contents"));
				int result = noticeDAO.noticeWrite(con, noticeDTO);
				con.close();
				String msg = "";
				if (result > 0) {
					msg = "Write Success";
				} else {
					msg = "Write Fail";

				}
				request.setAttribute("msg", msg);
				request.setAttribute("path", "./noticeList.notice");
				RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
				view.forward(request, response);

			} catch (Exception e) {
				// TODO: handle exception
			}
		}else {
			actionForward.setFlag(true);
			actionForward.setPath("./noticeWrite.jsp");

		}

		return actionForward;
	}

	public void noticeDelete() {

	}

	public void noticeUpdate() {

	}

}
