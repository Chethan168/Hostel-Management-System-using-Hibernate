<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Student</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<header class="bg-secondary display-1 text-center text-white fw-bold">
		<p>Add New Student</p>
	</header>
	<hr>
	<div class="container bg-warning"
			style="border: 7px solid black; text-align: center; height: auto; width: 500px; margin: 30px auto; border-radius: 10px;">
			<h2 class="text-center text-primary" style="text-decoration:underline">Add New Student:</h2>
		
		<form action="addnewstudentsevlet" method="post">
			<div class="mb-3">
				 <input type="number"
					name="studentId" placeholder="Enter student ID"  class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="text"
					name="name" placeholder="Enter student Name" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="number"
					name="roomNumber" placeholder="Enter student RoomNumber" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="text"
					name="phone_number" placeholder="Enter student Phone Number" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="text"
					name="course" placeholder="Enter student Course" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="text"
					name="college" placeholder="Enter student College" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="text"
					name="address" placeholder="Enter student Address" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div>
			<div class="mb-3">
				 <input type="password"
					name="password" placeholder="Enter student Password" class="form-control" required
					style="margin: 10px; border-left: 6px solid black; border-radius: 20px; height: 40px; width: 300px; border-radius: 20px 0px 20px 0px; font-family: cursive;">
			</div><hr>
			<button type="submit" class="btn btn-success">Add Student</button>
			<a href="adminInside.html" class="btn btn-secondary">Back</a>
		</form><hr>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<div class="alert alert-info mt-3"><%=message%></div>
		<%
		}
		%>
	</div>
</body>
</html>
