<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.hostel.Student" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Room Students</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
	<div class="container mt-5">
		<h2 class="text-center mb-4">Students in Room <%= request.getAttribute("roomNumber") %></h2>

		<%
			List<Student> students = (List<Student>) request.getAttribute("students");
			if (students != null && !students.isEmpty()) {
		%>
			<table class="table table-bordered table-striped">
				<thead class="table-dark">
					<tr>
						<th>Student ID</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Course</th>
						<th>College</th>
						<th>Address</th>
					</tr>
				</thead>
				<tbody>
					<% for (Student s : students) { %>
						<tr>
							<td><%= s.getStudentId() %></td>
							<td><%= s.getName() %></td>
							<td><%= s.getPhone_number() %></td>
							<td><%= s.getCourse() %></td>
							<td><%= s.getCollege() %></td>
							<td><%= s.getAddress() %></td>
						</tr>
					<% } %>
				</tbody>
			</table>
		<% } else { %>
			<p class="alert alert-warning text-center">No students found for this room.</p>
		<% } %>

		<div class="text-center mt-3">
			<a href="Room.jsp" class="btn btn-secondary">Back</a>
		</div>
	</div>
</body>
</html>
