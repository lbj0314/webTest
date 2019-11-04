package com.iu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NoticeController
 */
@WebServlet("/NoticeController")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoticeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Notice Controller");

		String url = request.getServletPath();


		//		String [] ar = url.split("/");
		//		
		//		url = ar[2].substring(0, ar[2].lastIndexOf("."));
		//		System.out.println(url);

		url = url.substring(url.lastIndexOf("/")+1, url.lastIndexOf("."));
		System.out.println(url);

		String uri = request.getRequestURI();
		StringBuffer rUrl = request.getRequestURL();

		System.out.println(request.getServletPath());
		System.out.println(uri);
		System.out.println(rUrl.toString());

//		if (url.equals("/notice/noticeList.do")) {
//
//		}

	
		if (url.equals("noticeList")) {
			System.out.println(url);
			path = "./noticeList.jsp";
			request.setAttribute("board", "noticeList");
			flag = true;

			//check 1이라면 select
			//1이 아니라면 list
		}else if(url.equals("noticeSelect")) {

		}

		if(flag) {
			RequestDispatcher view = request.getRequestDispatcher(path);
			view.forward(request, response);
		}else {
			response.sendRedirect(path);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
