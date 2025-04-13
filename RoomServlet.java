package com.hostel;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

@WebServlet("/RoomServlet")
public class RoomServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int roomNumber = Integer.parseInt(request.getParameter("roomnum"));

			Configuration cfg = new Configuration().configure().addAnnotatedClass(Student.class);
			SessionFactory sf = cfg.buildSessionFactory();
			Session session = sf.openSession();

			String hql = "FROM Student WHERE roomNumber = :roomNumber";
			Query<Student> query = session.createQuery(hql, Student.class);
			query.setParameter("roomNumber", roomNumber);
			List<Student> students = query.list();

			session.close();
			sf.close();

			request.setAttribute("students", students);
			request.setAttribute("roomNumber", roomNumber);
			RequestDispatcher rd = request.getRequestDispatcher("roomDetailsdisplay.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("Error: " + e.getMessage());
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
