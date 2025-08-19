package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daoperson;
import dto.person;
@WebServlet("/Register")
public class saveperson extends HttpServlet {
	
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String name=req.getParameter("n");
			int age=Integer.parseInt(req.getParameter("a"));
			String gender=req.getParameter("g");
			long phone=Long.parseLong(req.getParameter("p"));
			String email=req.getParameter("m");
			String password=req.getParameter("pa");
			
			person person=new person();
			person.setName(name);
			person.setAge(age);
			person.setGender(gender);
			person.setPhone(phone);
			person.setEmail(email);
			person.setPassword(password);
			
			daoperson daoperson=new daoperson();
		person dbperson=daoperson.saveperson(person);
		
		if(dbperson!=null) {
			req.setAttribute("key","successfully signed up plz proceed to Login");
			RequestDispatcher requestDispatcher=req.getRequestDispatcher("Login.jsp");
			requestDispatcher.forward(req, resp);
		}
			
			
		}
}
