<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DashBoard Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="CSS/adminStyles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn01.jotfor.ms/static/formCss.css?3.3.36750"
	rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet"
	href="https://cdn02.jotfor.ms/css/styles/nova.css?3.3.36750" />

<style type="text/css">
@media print {
	.form-section {
		display: inline !important
	}
	.form-pagebreak {
		display: none !important
	}
	.form-section-closed {
		height: auto !important
	}
	.page-section {
		position: initial !important
	}
}
</style>

<link type="text/css" rel="stylesheet"
	href="https://cdn03.jotfor.ms/themes/CSS/548aa20a700cc46d638b4567.css?themeRevisionID=606c5a2a6411c45dbc6f6503" />
<link type="text/css" rel="stylesheet"
	href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.36750" />

<link rel="stylesheet" type="text/css" href="CSS/addEmployee.css">

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.jsp">Company Name</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">Settings</a></li>
					<li><a class="dropdown-item" href="#!">Activity Log</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="#!">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="adminDash.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> Employees
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="viewEmployees.jsp">View Employees</a>
								<a class="nav-link" href="layout-sidenav-light.html">Update
									Employee</a> <a class="nav-link" href="addEmployee.jsp">Add
									Employee</a> <a class="nav-link" href="layout-sidenav-light.html">Remove
									Employee</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Departments
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link" href="layout-sidenav-light.html">View
									Departments</a> <a class="nav-link"
									href="layout-sidenav-light.html">Update Departments</a> <a
									class="nav-link" href="layout-static.html">Add Department</a> <a
									class="nav-link" href="layout-sidenav-light.html">Remove
									Department</a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts
						</a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>

				<script
					src="https://cdn02.jotfor.ms/static/prototype.forms.js?3.3.36750"
					type="text/javascript"></script>
				<script
					src="https://cdn03.jotfor.ms/static/jotform.forms.js?3.3.36750"
					type="text/javascript"></script>
				<script defer
					src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>


				<style type="text/css">
.form-label-left {
	width: 150px;
}

.form-line {
	padding-top: 12px;
	padding-bottom: 12px;
}

.form-label-right {
	width: 150px;
}

.form-all {
	width: 690px;
	color: #555 !important;
	font-family: 'Merriweather';
	font-size: 14px;
}

.form-radio-item label, .form-checkbox-item label, .form-grading-label,
	.form-header {
	color: false;
}
</style>

				
					<form action="addEmployeeServlet" method="post">

						<div role="main" class="form-all">
							<ul class="form-section page-section">
								<li id="cid_19" class="form-input-wide" data-type="control_head">
									<div class="form-header-group  header-default">
										<div class="header-text httal htvam">
											<h2 id="header_19" class="form-header"
												data-component="header">Enter Employee Details</h2>
											<div id="subHeader_19" class="form-subHeader">Fill the
												form to Enter the employee to the system.</div>
										</div>
									</div>
								</li>


								<!-- Full Name -->

								<li class="form-line jf-required" data-type="control_textbox"
									id="id_4"><label
									class="form-label form-label-left form-label-auto" id="label_4"
									for="input_4"> Full Name <span class="form-required">
									</span>
								</label>
									<div id="cid_4" class="form-input jf-required">
										<input type="text" id="name" name="name"
											data-type="input-textbox"
											class="form-textbox validate[required]" data-defaultvalue=""
											size="60" value="" placeholder=" " data-component="textbox"
											aria-labelledby="label_4" required="" />
									</div></li>


								<!-- Gender -->

								<li class="form-line jf-required" data-type="control_dropdown"
									id="id_22"><label
									class="form-label form-label-left form-label-auto"
									id="label_22" for="input_22"> Gender <span
										class="form-required"> </span>
								</label>
									<div id="cid_22" class="form-input jf-required">
										<select class="form-dropdown validate[required]" id="gender"
											name="gender" style="width: 150px" data-component="dropdown"
											required="">
											<option value=""></option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>

										</select>
									</div></li>


								<!-- Phone Number -->

								<li class="form-line jf-required" data-type="control_textbox"
									id="id_4"><label
									class="form-label form-label-left form-label-auto" id="label_4"
									for="input_4"> Phone Number <span class="form-required">
									</span>
								</label>
									<div id="cid_4" class="form-input jf-required">
										<input type="text" id="phone" name="phone"
											data-type="input-textbox"
											class="form-textbox validate[required]" data-defaultvalue=""
											size="20" value="" placeholder=" " data-component="textbox"
											aria-labelledby="label_4" required="" />
									</div></li>


								<!-- DOB -->

								<li class="form-line jf-required" data-type="control_birthdate"
									id="id_9"><label
									class="form-label form-label-left form-label-auto" id="label_9"
									for="input_9"> Date of Birth <span
										class="form-required"> </span>
								</label>
									<div id="cid_9" class="form-input jf-required">
										<div data-wrapper-react="true">
											<span class="form-sub-label-container"
												style="vertical-align: top"> <select name="DOBDay"
												id="DOBDay" class="form-dropdown validate[required]"
												data-component="birthdate-day"
												aria-labelledby="label_9 sublabel_9_day">
													<option></option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
											</select> <label class="form-sub-label" for="input_9_day"
												id="sublabel_9_day" style="min-height: 13px"
												aria-hidden="false"> Day </label>
											</span> <span class="form-sub-label-container"
												style="vertical-align: top"> <select name="DOBMonth"
												id="DOBMonth" class="form-dropdown validate[required]"
												data-component="birthdate-month"
												aria-labelledby="label_9 sublabel_9_month">
													<option></option>
													<option value="January">January</option>
													<option value="February">February</option>
													<option value="March">March</option>
													<option value="April">April</option>
													<option value="May">May</option>
													<option value="June">June</option>
													<option value="July">July</option>
													<option value="August">August</option>
													<option value="September">September</option>
													<option value="October">October</option>
													<option value="November">November</option>
													<option value="December">December</option>
											</select> <label class="form-sub-label" for="input_9_month"
												id="sublabel_9_month" style="min-height: 13px"
												aria-hidden="false"> Month </label>
											</span> <span class="form-sub-label-container"
												style="vertical-align: top"> <select name="DOBYear"
												id="DOBYear" class="form-dropdown validate[required]"
												data-component="birthdate-year"
												aria-labelledby="label_9 sublabel_9_year">
													<option></option>
													<option value="2022">2022</option>
													<option value="2021">2021</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
													<option value="1999">1999</option>
													<option value="1998">1998</option>
													<option value="1997">1997</option>
													<option value="1996">1996</option>
													<option value="1995">1995</option>
													<option value="1994">1994</option>
													<option value="1993">1993</option>
													<option value="1992">1992</option>
													<option value="1991">1991</option>
													<option value="1990">1990</option>
													<option value="1989">1989</option>
													<option value="1988">1988</option>
													<option value="1987">1987</option>
													<option value="1986">1986</option>
													<option value="1985">1985</option>
													<option value="1984">1984</option>
													<option value="1983">1983</option>
													<option value="1982">1982</option>
													<option value="1981">1981</option>
													<option value="1980">1980</option>
													<option value="1979">1979</option>
													<option value="1978">1978</option>
													<option value="1977">1977</option>
													<option value="1976">1976</option>
													<option value="1975">1975</option>
													<option value="1974">1974</option>
													<option value="1973">1973</option>
													<option value="1972">1972</option>
													<option value="1971">1971</option>
													<option value="1970">1970</option>
													<option value="1969">1969</option>
													<option value="1968">1968</option>
													<option value="1967">1967</option>
													<option value="1966">1966</option>
													<option value="1965">1965</option>
													<option value="1964">1964</option>
													<option value="1963">1963</option>
													<option value="1962">1962</option>
													<option value="1961">1961</option>
													<option value="1960">1960</option>
													<option value="1959">1959</option>
													<option value="1958">1958</option>
													<option value="1957">1957</option>
													<option value="1956">1956</option>
													<option value="1955">1955</option>
													<option value="1954">1954</option>
													<option value="1953">1953</option>
													<option value="1952">1952</option>
													<option value="1951">1951</option>
													<option value="1950">1950</option>
													<option value="1949">1949</option>
													<option value="1948">1948</option>
													<option value="1947">1947</option>
													<option value="1946">1946</option>
													<option value="1945">1945</option>
													<option value="1944">1944</option>
													<option value="1943">1943</option>
													<option value="1942">1942</option>
													<option value="1941">1941</option>
													<option value="1940">1940</option>
													<option value="1939">1939</option>
													<option value="1938">1938</option>
													<option value="1937">1937</option>
													<option value="1936">1936</option>
													<option value="1935">1935</option>
													<option value="1934">1934</option>
													<option value="1933">1933</option>
													<option value="1932">1932</option>
													<option value="1931">1931</option>
													<option value="1930">1930</option>
													<option value="1929">1929</option>
													<option value="1928">1928</option>
													<option value="1927">1927</option>
													<option value="1926">1926</option>
													<option value="1925">1925</option>
													<option value="1924">1924</option>
													<option value="1923">1923</option>
													<option value="1922">1922</option>
													<option value="1921">1921</option>
													<option value="1920">1920</option>
											</select> <label class="form-sub-label" for="input_9_year"
												id="sublabel_9_year" style="min-height: 13px"
												aria-hidden="false"> Year </label>
											</span>
										</div>
									</div></li>


								<!-- Address -->

								<li class="form-line jf-required" data-type="control_address"
									id="id_20"><label
									class="form-label form-label-left form-label-auto"
									id="label_20" for="input_20_addr_line1"> Address <span
										class="form-required"> </span>
								</label>
									<div id="cid_20" class="form-input jf-required">
										<div summary="" class="form-address-table jsTest-addressField">
											<div
												class="form-address-line-wrapper jsTest-address-line-wrapperField">
												<span
													class="form-address-line form-address-street-line jsTest-address-lineField">
													<span class="form-sub-label-container"
													style="vertical-align: top"> <input type="text"
														id="address" name="address"
														class="form-textbox validate[required] form-address-line"
														data-defaultvalue="" size="60"
														autoComplete="section-input_20 address-line1" value=""
														data-component="address_line_1"
														aria-labelledby="label_20 sublabel_20_addr_line1" /> <label
														class="form-sub-label" for="input_20_addr_line1"
														id="sublabel_20_addr_line1" style="min-height: 13px"
														aria-hidden="false"> </label>
												</span>
												</span>
											</div>
										</div>
									</div></li>


								<!-- Email -->

								<li class="form-line" data-type="control_email" id="id_24"><label
									class="form-label form-label-left form-label-auto"
									id="label_24" for="input_24"> E-mail Address </label>
									<div id="cid_24" class="form-input">
										<span class="form-sub-label-container"
											style="vertical-align: top"> <input type="email"
											id="email" name="email" class="form-textbox validate[Email]"
											data-defaultvalue="" size="30" value=""
											placeholder="ex: myname@example.com" data-component="email"
											aria-labelledby="label_24 sublabel_input_24" /> <label
											class="form-sub-label" for="input_24" id="sublabel_input_24"
											style="min-height: 13px" aria-hidden="false"> </label>
										</span>
									</div></li>



								<!-- User Name -->

								<li class="form-line jf-required" data-type="control_textbox"
									id="id_4"><label
									class="form-label form-label-left form-label-auto" id="label_4"
									for="input_4"> User Name <span class="form-required">
									</span>
								</label>
									<div id="cid_4" class="form-input jf-required">
										<input type="text" id="username" name="username"
											data-type="input-textbox"
											class="form-textbox validate[required]" data-defaultvalue=""
											size="20" value="" placeholder=" " data-component="textbox"
											aria-labelledby="label_4" required="" />
									</div></li>



								<!-- Employee Job  -->

								<li class="form-line jf-required" data-type="control_dropdown"
									id="id_22"><label
									class="form-label form-label-left form-label-auto"
									id="label_22" for="input_22"> Select Employee Job
										Position <span class="form-required"> </span>
								</label>
									<div id="cid_22" class="form-input jf-required">
										<select class="form-dropdown validate[required]"
											id="department" name="position" style="width: 150px"
											data-component="dropdown" required="">
											<option value=""></option>
											<option value="Admin">Admin</option>
											<option value="Manager">Manager</option>
											<option value="Staff">Staff</option>
											<option value="HumanResourceOfficer">Human Resource
												Officer</option>
											<option value="Accountant">Accountant</option>

										</select>
									</div></li>



								<!-- Department -->

								<li class="form-line jf-required" data-type="control_dropdown"
									id="id_22"><label
									class="form-label form-label-left form-label-auto"
									id="label_22" for="input_22"> Select Department <span
										class="form-required"> </span>
								</label>
									<div id="cid_22" class="form-input jf-required">
										<select class="form-dropdown validate[required]"
											id="department" name="department" style="width: 150px"
											data-component="dropdown" required="">
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
									</div></li>



								<!-- Password -->

								<li class="form-line jf-required" data-type="control_textbox"
									id="id_4"><label
									class="form-label form-label-left form-label-auto" id="label_4"
									for="input_4"> Password <span class="form-required">
									</span>
								</label>
									<div id="cid_4" class="form-input jf-required">
										<input type="password" id="password" name="password"
											data-type="input-textbox"
											class="form-textbox validate[required]" data-defaultvalue=""
											size="20" value="" placeholder=" " data-component="textbox"
											aria-labelledby="label_4" required="" />
									</div></li>



								<!-- Submit button -->

								<li class="form-line" data-type="control_button" id="id_25">
									<div id="cid_25" class="form-input-wide">
										<div style="margin-left: 156px" data-align="auto"
											class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
											<button id="input_25" type="submit"
												class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
												data-component="button" data-content="">Submit</button>
										</div>
									</div>
								</li>
							</ul>
						</div>

					</form>
				

			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
