package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateStudentServlet")
public class updateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email= request.getParameter("email");
		String phoneNo= request.getParameter("phoneNo");
		String address= request.getParameter("address");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		
		
		boolean isTrue;
		
		isTrue = StudentsDButil.updateStudent(id, name, email, phoneNo, address, username, password);
		
		if(isTrue==true) {
			
			List<student> stdDetails = StudentsDButil.getStudentDetails(id);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}else {
			List<student> stdDetails = StudentsDButil.getStudentDetails(id);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
			
		}
try {
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
