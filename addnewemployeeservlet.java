package com.hostel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/addnewemployeeservlet")
public class addnewemployeeservlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));
        String name = request.getParameter("employeename");
        String role = request.getParameter("employeerole");
        String phone = request.getParameter("employeephonenum");
        String state = request.getParameter("employeestate");

        Employee emp = new Employee();
        emp.setId(id);
        emp.setName(name);
        emp.setRole(role);
        emp.setPhone_number(phone);
        emp.setState(state);

        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session session = sf.openSession();
        Transaction tx = session.beginTransaction();
        session.save(emp);
        tx.commit();
        session.close();

        response.sendRedirect("success.html");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
