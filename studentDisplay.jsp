<%@ page import="com.hostel.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow-lg p-4">
            <h2 class="text-center text-primary mb-4">Student Information</h2>
            
            <%
                Student s = (Student) request.getAttribute("student");
                if (s != null) {
            %>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <td><%= s.getStudentId() %></td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><%= s.getName() %></td>
                </tr>
                <tr>
                    <th>Room Number</th>
                    <td><%= s.getRoomNumber() %></td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td><%= s.getPhone_number() %></td>
                </tr>
                <tr>
                    <th>Course</th>
                    <td><%= s.getCourse() %></td>
                </tr>
                <tr>
                    <th>College</th>
                    <td><%= s.getCollege() %></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><%= s.getAddress() %></td>
                </tr>
            </table>
            <%
                } else {
                    String msg = (String) request.getAttribute("message");
            %>
            <div class="alert alert-warning text-center">
                <%= msg != null ? msg : "No student data available." %>
            </div>
            <% } %>

            <div class="text-center mt-4">
                <a href="index.html" class="btn btn-primary">Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>
