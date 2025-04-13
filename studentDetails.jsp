<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.but input:hover {
	background-color: green;
	font-style: italic;
}

.but a:hover {
	background-color: green;
	font-style: italic;
}

.head:hover {
	font-weight: bold;
	font-style: italic;
	text-shadow: black;
}
</style>
</head>
<body>
	<header>
		<p class="h1 bg-secondary fw-bold text-white text-center display-2">Student
			Details</p>
	</header>

	<div class="head">

		<a href="NewStudent.jsp" class="m-4 btn btn-danger text-center"
			style="margin-bottom: 10px; width: 150px; font-family: cursive; margin-left: 20px;">ADD
			New Student</a> <a href="index.html"
			class="m-4 btn btn-primary text-center"
			style="margin-bottom: 10px; width: 150px; font-family: cursive; height: 60px; padding-top: 12px;">Home
			Page</a>
	</div>

	<!-- ✅ FORM added here -->
	<form action="Studentdetailssearchserv" method="post">
		<div class="container bg-light"
			style="border: 7px solid black; text-align: center; display: inline-block; height: 350px; width: 500px; margin-left: 450px; margin-top: 30px; border-radius: 10px 0px;">
			<h1
				style="text-decoration: underline; font-style: italic; font-family: cursive;">Student
				Details:</h1>
			<hr>
			<input type="search" placeholder="Enter StudentId" name="studentId"
				class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; font-family: cursive;"><br>
			<hr>
			<div class="but">
				<input type="submit" value="Search"
					class="btn btn-primary text-center"
					style="margin-bottom: 10px; width: 150px; font-family: cursive;"><br>
				<a href="adminInside.html" class="btn btn-primary text-center"
					style="margin-bottom: 10px; width: 150px; font-family: cursive;">Back</a>
			</div>
		</div>
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
