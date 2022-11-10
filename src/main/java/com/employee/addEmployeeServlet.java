package com.employee;

import jakarta.servlet.RequestDispatcher;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



public class addEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String position = request.getParameter("position");
		String department = request.getParameter("department");
		String DOBMonth = request.getParameter("DOBMonth");
		int DOBDay = Integer.parseInt(request.getParameter("DOBDay"));
		int DOBYear = Integer.parseInt(request.getParameter("DOBYear"));
		
		boolean isTrue;
		
		isTrue = employeeDBUtil.insertEmployee(name, email, phone, address, username, password, gender, position, department, DOBMonth, DOBDay, DOBYear);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else{
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
