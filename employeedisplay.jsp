<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hostel.Employee" %>
<%
    Employee emp = (Employee) request.getAttribute("employee");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Registered</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5 p-4 border border-success rounded bg-light">
        <h2 class="text-success text-center">Employee Details!!...</h2>
        <hr>
        <div class="mb-3"><strong>ID:</strong> <%= emp.getId() %></div>
        <div class="mb-3"><strong>Name:</strong> <%= emp.getName() %></div>
        <div class="mb-3"><strong>Role:</strong> <%= emp.getRole() %></div>
        <div class="mb-3"><strong>Phone Number:</strong> <%= emp.getPhone_number() %></div>
        <div class="mb-3"><strong>State:</strong> <%= emp.getState() %></div>
        <hr>
        <a href="Employeedetails.jsp" class="btn btn-primary">Back</a>
        <a href="adminInside.html" class="btn btn-secondary">Home</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
