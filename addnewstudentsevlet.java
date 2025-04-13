package com.hostel;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/addnewstudentsevlet")
public class addnewstudentsevlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int studentId = Integer.parseInt(request.getParameter("studentId"));
            String name = request.getParameter("name");
            int roomNumber = Integer.parseInt(request.getParameter("roomNumber"));
            String phone_number = request.getParameter("phone_number");
            String course = request.getParameter("course");
            String college = request.getParameter("college");
            String address = request.getParameter("address");
            String password = request.getParameter("password");

            Student std = new Student();
            std.setStudentId(studentId);
            std.setName(name);
            std.setRoomNumber(roomNumber);
            std.setPhone_number(phone_number);
            std.setCourse(course);
            std.setCollege(college);
            std.setAddress(address);
            std.setPassword(password);

            Configuration cfg = new Configuration().configure().addAnnotatedClass(Student.class);
            SessionFactory sf = cfg.buildSessionFactory();
            Session hibSession = sf.openSession();
            Transaction tx = hibSession.beginTransaction();

            hibSession.save(std);

            tx.commit();
            hibSession.close();
            sf.close();

            // ✅ Redirect to success page
            response.sendRedirect("studentsuccess.html");

        } catch (Exception e) {
            request.setAttribute("message", "Error adding student: " + e.getMessage());
            e.printStackTrace();
            // Forward to original form if there's an error
            RequestDispatcher rd = request.getRequestDispatcher("NewStudent.jsp");
            rd.forward(request, response);
        }
    }
}
