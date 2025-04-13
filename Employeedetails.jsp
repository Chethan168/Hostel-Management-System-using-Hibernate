<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<p class="h1 bg-secondary fw-bold text-white text-center display-2">Employee
			Details</p>
	</header>
	<div class="head">
		<a href="addnewemployee.jsp"
			class="border-top m4 btn btn-primary text-center"
			style="margin-bottom: 10px; width: 150px; font-family: cursive; height: 60px; padding-top: 5px;">Add
			New Employee</a> <a href="DeleteEmployee.jsp"
			class="border-top m4 btn btn-danger text-center"
			style="margin-bottom: 10px; width: 150px; font-family: cursive; margin-left: 20px;">Delete
			Employee</a>
	</div>
	<div class="container bg-light"
		style="border: 7px solid black; text-align: center; display: inline-block; height: 350px; width: 500px; margin-left: 450px; margin-top: 30px; border-radius: 10px 0px;">
		<h1
			style="text-decoration: underline; font-style: italic; font-family: cursive;">Employee
			Details:</h1>
		<hr>
		<form action="EmployeedetailsSearch">
			<input type="number" placeholder="Enter Employee Id"
				name="employeeId" class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;"><br>
			<hr>
			<div class="but">
				<input type="submit" value="Search"
					class="border-top m4 btn btn-primary text-center"
					style="margin-bottom: 10px; width: 150px; font-family: cursive;">
		</form>
		<br> <a href="adminInside.html"
			class="border-top m4 btn btn-primary text-center"
			style="margin-bottom: 10px; width: 150px; font-family: cursive;">Back</a>
	</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>