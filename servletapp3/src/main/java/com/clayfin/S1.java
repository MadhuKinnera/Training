package com.clayfin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S1
 */
@WebServlet("/control.do")
public class S1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	List<String> courses = null;
	List<String> gender = null;
	List<String> states = null;

	public S1() {
		courses = new ArrayList<>();
		courses.add("JAVA");
		courses.add("C++");
		courses.add("SPRING");

		states = new ArrayList<>();
		states.add("TELANGANA");
		states.add("TAMILNADU");
		states.add("KERALA");
		states.add("MAHARASTRA");
		
		gender = new ArrayList<>();
		gender.add("MALE");
		gender.add("FEMALE");

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("courses", courses);
		request.setAttribute("states", states);
		request.setAttribute("gender", gender);

		RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
