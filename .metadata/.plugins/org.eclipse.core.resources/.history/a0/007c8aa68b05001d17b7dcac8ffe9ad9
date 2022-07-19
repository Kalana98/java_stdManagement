package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteStudentServlet")
public class DeleteStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = StudentsDButil.deleteStudent(id);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("insertStd.jsp");
			dis.forward(request,response);
		}else {
			List<student> stdDetails = StudentsDButil.getStudentDetails(id);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request,response);
		}
	}

}
