package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScopeServlet
 */
@WebServlet({ "/ScopeServlet", "/scope" })
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScopeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//id, pwd 값 뽑아서 출력
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("%s %s ",id,pwd);
		//1. request scope (비지니스 거래)
		request.setAttribute("key", "rValue");
		
		//2. session scope
		request.getSession().setAttribute("key", "sValue");

		//3. application scope
		request.getServletContext().setAttribute("key", "aValue");
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/scope.jsp");
		rd.forward(request, response);
	}

}
