<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>


	<header>
		<p class="h1 bg-secondary fw-bold text-white text-center display-4">Admin
			Login</p>
	</header>


	<div class="head">
		<a href="index.html" class="border-top m4 btn btn-danger text-center"
			style="margin-bottom: 10px; width: 150px; font-family: cursive; margin-left: 20px;">Home</a>
	</div>

	<div class="container bg-warning"
		style="border: 7px solid black; text-align: center; display: inline-block; height: 400px; width: 500px; margin-left: 450px; margin-top: 30px; border-radius: 10px 0px;">

		<h1
			style="text-decoration: underline; font-style: italic; font-family: cursive;">Login
			Here:</h1>
		<hr>

		<form action="adminloginservlet" method="post">
			<input type="text" name="adminname" placeholder="Enter Admin Name"
				class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;"
				required><br> <input type="password" name="adminpwd"
				placeholder="Enter Password" class="border-top"
				style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;"
				required><br>

			<hr>

			<input type="submit" value="Submit"
				class="border-top m4 btn btn-primary text-center"
				style="margin-bottom: 10px; width: 150px; font-family: cursive;">
		</form>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
