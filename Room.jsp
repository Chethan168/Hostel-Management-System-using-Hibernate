<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Room Details</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<header>
		<p class="h1 bg-secondary fw-bold text-white text-center display-2">Room Details</p>
	</header>

	<div class="head">
		<a href="Employeedetails.jsp" class="btn btn-danger m-3">Employee Details</a>
		<a href="index.html" class="btn btn-primary m-3">Home Page</a>
		<a href="studentDetails.jsp"></a>
	</div>

	<div class="container bg-warning p-4" style="max-width: 500px; margin-top: 30px; border-radius: 10px;">
		<h1 class="text-center">Select Room:</h1>
		<hr>
		<form action="RoomServlet" method="post">
			<select name="roomnum" class="form-select mb-3" required>
				<option value="">--Select Room Number--</option>
				<% for (int i = 1; i <= 20; i++) { %>
					<option value="<%= i %>"><%= i %></option>
				<% } %>
			</select>
			<input type="submit" value="Submit" class="btn btn-primary w-100">
		</form>
		<a href="adminInside.html" class="btn btn-secondary mt-3 w-100">Back</a>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
