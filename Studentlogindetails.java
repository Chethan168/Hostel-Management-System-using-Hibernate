package com.hostel;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

@WebServlet("/Studentlogindetails")
public class Studentlogindetails extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentIdParam = request.getParameter("studentId");
        String pwd = request.getParameter("password");

        try {
            int studentId = Integer.parseInt(studentIdParam);

            Configuration cfg = new Configuration().configure().addAnnotatedClass(Student.class);
            SessionFactory factory = cfg.buildSessionFactory();
            Session session = factory.openSession();

            Student student = session.get(Student.class, studentId);

            session.close();
            factory.close();

            if (student != null) {
                if (student.getPassword().equals(pwd)) {
                    request.setAttribute("student", student);
                    RequestDispatcher rd = request.getRequestDispatcher("studentDisplay.jsp");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("message", "Incorrect password.");
                    RequestDispatcher rd = request.getRequestDispatcher("studentDisplay.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("message", "No student found with ID: " + studentId);
                RequestDispatcher rd = request.getRequestDispatcher("studentDisplay.jsp");
                rd.forward(request, response);
            }

        } catch (NumberFormatException e) {
            request.setAttribute("message", "Invalid student ID format.");
            RequestDispatcher rd = request.getRequestDispatcher("studentDisplay.jsp");
            rd.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
