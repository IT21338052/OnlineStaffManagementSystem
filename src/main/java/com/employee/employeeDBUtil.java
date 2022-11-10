package com.employee;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class employeeDBUtil {

	/* Creating static variables */
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	/* Creating a method to add employees to the database */
	public static boolean insertEmployee(String name, String email, String phone, String address, String username,
			String password, String gender, String position, String department, String DOBMonth, int DOBDay,
			int DOBYear) {

		boolean valueInserted = false;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "insert into employee values(0, '" + name + "', '" + email + "', '" + phone + "', '" + address
					+ "', '" + username + "', '" + password + "', '" + gender + "', '" + position + "', '" + department
					+ "', '" + DOBDay + "', '" + DOBMonth + "', '" + DOBYear + "')";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				valueInserted = true;
			} else {
				valueInserted = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return valueInserted;

	}

	/* Creating a method to get a single employee detail list from the database */
	public static employee getEmployeeDetails(String username) {

		employee emp = null;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from employee where employeeUsername = '" + username + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				String usernameU = rs.getString(6);
				String passwordU = rs.getString(7);
				String gender = rs.getString(8);
				String position = rs.getString(9);
				String department = rs.getString(10);
				int dobDay = rs.getInt(11);
				String dobMonth = rs.getString(12);
				int dobYear = rs.getInt(13);

				emp = new employee(id, name, email, phone, address, usernameU, passwordU, gender, position, department,
						dobDay, dobMonth, dobYear);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return emp;

	}

	/* Creating a method to validate the user during the login */
	public static employee validate(String username, String password, String department, String position) {
		
		employee emp = null;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from employee where (employeeUsername = '" + username + "' AND employeePassword = '"
					+ password + "') AND (employeeDepartment = '"+department+"' AND employeePosition = '"+position+"')";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {

				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				String usernameU = rs.getString(6);
				String passwordU = rs.getString(7);
				String gender = rs.getString(8);
				String positionU = rs.getString(9);
				String departmentU = rs.getString(10);
				int dobDay = rs.getInt(11);
				String dobMonth = rs.getString(12);
				int dobYear = rs.getInt(13);

				emp = new employee(id, name, email, phone, address, usernameU, passwordU, gender, positionU, departmentU,
						dobDay, dobMonth, dobYear);

			}
		}
			catch(Exception e ) {
				
				e.printStackTrace();
			
			}
		
		return emp;
	}

	public static boolean updateEmployee(int id, String name, String email, String phone, String address, String username,
			String password, String gender, String position, String department, String DOBMonth, int DOBDay,
			int DOBYear) {

		boolean valueInserted = false;

		try {

			
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "Update employee set employeeName = '"+name+"', employeeEmail = '"+email+"', employeephone = '"+phone+"', employeeAddress = '"+address+"', employeeUsername = '"+username+"', employeePassword = '"+password+"',"
					+ "                                           employeeGender ='"+gender+"', employeePosition = '"+position+"', employeeDepartment = '"+department+"', employeeDOBDay = '"+DOBDay+"', employeeDOBMonth = '"+DOBMonth+"', employeeDOBYear = '"+DOBYear+"' "
							+ "                                   where employeeID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				valueInserted = true;
			} else {
				valueInserted = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return valueInserted;

	}

}
