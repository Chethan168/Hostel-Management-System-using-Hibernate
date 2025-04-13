<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<header>
		<p class="h1 bg-secondary fw-bold text-white text-center display-4">Add
			New Employee Details</p>
	</header>
	<div class="head" style="margin: 20px;">
		<a href="Employeedetails.jsp" class="btn btn-primary"
			style="width: 150px; font-family: cursive;">Back</a> <a
			href="index.jsp" class="btn btn-danger"
			style="width: 150px; font-family: cursive; margin-left: 20px;">Home</a>
	</div>

	<form action="addnewemployeeservlet" method="post">
		<div class="container bg-warning"
			style="border: 7px solid black; text-align: center; height: auto; width: 500px; margin: 30px auto; border-radius: 10px;">
			<h1
				style="text-decoration: underline; font-style: italic; font-family: cursive;">Employee
				Details:</h1>
			<hr>
			<input type="number" name="employeeId"
				placeholder="Enter Employee ID" required class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			<input type="text" name="employeename"
				placeholder="Enter Employee Name" required class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			<input type="text" name="employeerole"
				placeholder="Enter Employee Role" required class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;"">
			<input type="text" name="employeephonenum"
				placeholder="Enter Phone Number" required class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			<input type="text" name="employeestate" placeholder="Enter State"
				required class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			<hr>
			<input type="submit" value="Add Employee"
				class="btn btn-primary mb-3"
				style="width: 150px; font-family: cursive;">
		</div>
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
