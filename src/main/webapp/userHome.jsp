<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<%@page import="com.employee.*"%>
<%@page import="java.util.ArrayList"%>

<title>Employee Homepage</title>
<link href="CSS/adminStyles.css" rel="stylesheet" />
<%@include file = "includes/head.jsp" %>

</head>


<body class="sb-nav-fixed">


    <%@include file = "includes/header.jsp" %>
    <div id="layoutSidenav">
    <%@include file = "includes/employeeSidebar.jsp" %>


	
		<div id="layoutSidenav_content">
			<main>

				<!-- <script
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
 -->

       
	
			
				<div class="container-fluid px-4">
					<h1 class="mt-4">Welcome</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active"><%=empDetails.getName()%></li>
					</ol>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body">Primary Card</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">View
										Details</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-white mb-4">
								<div class="card-body">Warning Card</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">View
										Details</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-white mb-4">
								<div class="card-body">Success Card</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">View
										Details</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-white mb-4">
								<div class="card-body">Danger Card</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">View
										Details</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area me-1"></i> Area Chart Example
								</div>
								<div class="card-body">
									<canvas id="myAreaChart" width="100%" height="40"></canvas>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar me-1"></i> Bar Chart Example
								</div>
								<div class="card-body">
									<canvas id="myBarChart" width="100%" height="40"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			</main>
			
			
		</div>
		</div>
	<%@include file = "includes/footer.jsp" %>
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
