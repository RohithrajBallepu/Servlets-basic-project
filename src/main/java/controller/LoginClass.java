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
@WebServlet("/Login")
public class LoginClass extends HttpServlet {
	
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("m");
		String password=req.getParameter("pa");
		
		daoperson daoperson=new daoperson();
		 person backendperson=daoperson.fetchPersonbyEmailid(email);
		
		 if (backendperson!=null) {
		 if(password.equals(backendperson.getPassword())) {
//			 List<person>list=daoperson.fetchall();
//			 req.setAttribute("r", list);
			person person=daoperson.fetchBYiD(backendperson.getPersonId());
			req.setAttribute("r", person);
			RequestDispatcher requestDispatcher=req.getRequestDispatcher("Display.jsp");
			requestDispatcher.forward(req, resp);
		 }
		 else {
			 req.setAttribute("key","invalid dabba fellow");
			 RequestDispatcher requestDispatcher=req.getRequestDispatcher("Login.jsp");
				requestDispatcher.forward(req, resp);
		 }
		 }
		 else {
			 req.setAttribute("key","invalid dabba fellow");
			 RequestDispatcher requestDispatcher=req.getRequestDispatcher("Login.jsp");
				requestDispatcher.forward(req, resp);
		 }
		
}		
		 }
		

