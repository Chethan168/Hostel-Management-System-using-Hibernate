package com.hostel;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@WebServlet("/EmployeedetailsSearch")
public class EmployeedetailsSearch extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	try {
    	    int id = Integer.parseInt(request.getParameter("employeeId"));
    	    Configuration cfg = new Configuration().configure();
    	    SessionFactory sf = cfg.buildSessionFactory();
    	    Session hibSession = sf.openSession();

    	    Employee emp = hibSession.get(Employee.class, id);

    	    hibSession.close();
    	    sf.close();

    	    if (emp != null) {
    	        request.setAttribute("employee", emp);
    	    } else {
    	        request.setAttribute("message", "No employee found with ID: " + id);
    	    }
    	    request.getRequestDispatcher("employeedisplay.jsp").forward(request, response);

    	} catch (NumberFormatException e) {
    	    request.setAttribute("message", "Invalid ID format");
    	    request.getRequestDispatcher("employeedisplay.jsp").forward(request, response);
    	}

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
