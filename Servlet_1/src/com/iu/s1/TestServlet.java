package com.iu.s1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RandomTest randomTest = new RandomTest();
		int num = randomTest.getNum();
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<style>");
		out.println("#d1{color:red;}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1 id= \"d1\" >"+num+name+age+"</h1>");
		out.println("</body>");
		out.println("</html>");
		
//		String encoding = request.getCharacterEncoding();
//		String la = request.getLocalAddr();
//		int lp = request.getLocalPort();
//		String method = request.getMethod();
//		String sa = request.getRemoteAddr();
//		int sp = request.getRemotePort();
//		
//		System.out.println("Encoding : " + encoding);
//		System.out.println("LocalAddr : " + la);
//		System.out.println("LocalPort : " + lp);
//		System.out.println("Method : " + method);
//		System.out.println("RemoteAddr : " + sa);
//		System.out.println("RemotePort : " + sp);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
