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
@WebServlet("/edit")
public class editclass extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("n");
		int age = Integer.parseInt(req.getParameter("a"));
		String gender = req.getParameter("g");
		long phone = Long.parseLong(req.getParameter("p"));
		String email = req.getParameter("m");
		String password = req.getParameter("pa");

		person person = new person();
		person.setPersonId(id);
		person.setName(name);
		person.setAge(age);
		person.setGender(gender);
		person.setPhone(phone);
		person.setEmail(email);
		person.setPassword(password);

		daoperson daoperson = new daoperson();
		person newperson = daoperson.updateperson(person);
		
		if(newperson!=null) {
		List<person>list=daoperson.fetchall();
		req.setAttribute("r",list);
		RequestDispatcher requestDispatcher=req.getRequestDispatcher("Display.jsp");
		requestDispatcher.forward(req, resp);
		}
	}
}
