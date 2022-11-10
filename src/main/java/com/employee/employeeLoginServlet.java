package com.employee;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class employeeLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/* Since system.out.println cannot be used directly */
		PrintWriter out = response.getWriter();
		response.setContentType("text.html");

		/* Getting the login values from the empLogin jsp page */
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String department = request.getParameter("department");
		String position = request.getParameter("position");

		/* boolean isTrue; */

		/* calling the validate method in the Util class to validate the user */
		employee emp = employeeDBUtil.validate(username, password, department, position);

		if (emp != null) {
			
			
			/* Creating a employee object to hold the employee details */
			employee empDetails = employeeDBUtil.getEmployeeDetails(username);
			request.setAttribute("empDetails", empDetails);

			/*
			 * Creating a session for the logged in User and passing the logged in employee
			 * details using the session
			 */
			HttpSession session = request.getSession();
			session.setAttribute("empDetails", empDetails);

			/*
			 * When the information is validated the user is redirected to the Employee
			 * Homepage
			 */
			RequestDispatcher dis = request.getRequestDispatcher("userHome.jsp");
			dis.forward(request, response);
			System.out.println("Hi");

			/*
			 * if (department == "Marketing" && position == "Staff") {
			 * 
			 * 
			 * RequestDispatcher dis = request.getRequestDispatcher("userHome.jsp");
			 * dis.forward(request, response); System.out.println("Hi");
			 * 
			 * } else if (department == "Administration" && position == "Admin") {
			 * 
			 * 
			 * RequestDispatcher dis = request.getRequestDispatcher("adminDash.jsp");
			 * dis.forward(request, response);
			 * 
			 * }
			 */
			/* When the validation fails */
		} else {

			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect');");
			out.println("location = 'empLogin.jsp'");
			out.println("</script>");

		}

	}

}
