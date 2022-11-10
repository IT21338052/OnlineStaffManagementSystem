package com.employee;

public class employee {
	
	private int id;
	private String name;
	private String email; 
	private String phone; 
	private String address; 
	private String username;
	private String password;
	private String gender;
	private String position;
	private String department;
	private int dobDay;
	private String dobMonth;
	private int dobYear;
	
	
	public employee(int id, String name, String email, String phone, String address, String username, String password,
			String gender, String position, String department, int dobDay, String dobMonth, int dobYear) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.position = position;
		this.department = department;
		this.dobDay = dobDay;
		this.dobMonth = dobMonth;
		this.dobYear = dobYear;
		
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddress() {
		return address;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}


	public String getGender() {
		return gender;
	}


	public String getPosition() {
		return position;
	}


	public String getDepartment() {
		return department;
	}


	public int getDobDay() {
		return dobDay;
	}


	public String getDobMonth() {
		return dobMonth;
	}


	public int getDobYear() {
		return dobYear;
	}



	
	
	



}
