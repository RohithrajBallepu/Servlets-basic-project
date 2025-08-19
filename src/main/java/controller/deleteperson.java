package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daoperson;
import dto.person;

@WebServlet("/delete")
public class deleteperson extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		daoperson daoperson = new daoperson();
		boolean result = daoperson.deleteperson(id);

		if (result) {
			List<person> list = daoperson.fetchall();
			req.setAttribute("r", list);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Display.jsp");
			requestDispatcher.forward(req, resp);
		}

	}
}
