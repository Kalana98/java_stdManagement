package com.student;

import java.io.IOException;

import java.util.List;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//getting data from login.jsp page
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uId");
		String password = request.getParameter("pw");
		
		
		List<student> StdDetails = StudentsDButil.validate(username, password);
		
		try {
			List<student> stdDetails = StudentsDButil.validate(username,password);
			request.setAttribute("stdDetails", stdDetails);
		}catch(Exception e) {
			e.printStackTrace();
		}
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		
		
	}

}
