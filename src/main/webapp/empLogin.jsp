<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<html lang="en">


<head>

<%@include file = "includes/head.jsp"  %>
<!-- Custom Styles -->
<link rel="stylesheet" type="text/css" href="CSS/empLogin.css">

<title>Login</title>
</head>



<body>

	<!-- Backgrounds -->

	<div id="login-bg" class="container-fluid">

		<div class="bg-img"></div>
		<div class="bg-color"></div>
	</div>

	<!-- End Backgrounds -->

	<div class="container" id="login">
		<div class="row justify-content-center">
			<div class="col-lg-8">
				<div class="login">

					<h1>Login</h1>

					<!-- Loging form -->
					<form action="employeeLoginServlet" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter Username"
								name="username">

						</div>
						
						<div class="form-group">
							<div id="exampleInputEmail1" class="form-control">
										<select class="form-dropdown validate[required]"
											id="department" name="department" style="width: 150px"
											data-component="dropdown" required="" placeholder = "Select Department">
											<option value=""></option>
											<option value="Administration">Administration</option>
											<option value="Customer Service">Customer Service</option>
											<option value="Finance">Finance</option>
											<option value="Human Resource">Human Resource</option>
											<option value="Marketing">Marketing</option>
											<option value="Quality Assurance">Quality Assurance</option>
											<option value="Research and Development">Research
												and Development</option>
											<option value="Sales">Sales</option>

										</select>
									</div>

						</div>
						
						<div class="form-group">
						<div id="cid_22" class="form-input jf-required">
										<select class="form-dropdown validate[required]"
											id="position" name="position" style="width: 150px"
											data-component="dropdown" required="">
											<option value=""></option>
											<option value="Admin">Admin</option>
											<option value="Manager">Manager</option>
											<option value="Staff">Staff</option>
											<option value="HumanResourceOfficer">Human Resource
												Officer</option>
											<option value="Accountant">Accountant</option>

										</select>
									</div>
								</div>
						
						
						<div class="form-group">
							<input type="password" class="form-control"
								id="exampleInputPassword1" placeholder="Password"
								name="password">
						</div>

						<div class="form-check">

							<label class="switch"> <input type="checkbox"> <span
								class="slider round"></span>
							</label> <label class="form-check-label" for="exampleCheck1">Remember
								me</label> <label class="forgot-password"><a href="#">Forgot
									Password?<a></label>

						</div>

						<br>
						<button type="submit" class="btn btn-lg btn-block btn-success">Sign
							in</button>
					</form>
					<!-- End Loging form -->

				</div>
			</div>
		</div>
	</div>


</body>
</html>