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

@WebServlet("/update")
public class update extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id")) ;
	
	daoperson daoperson=new  daoperson();
	person dbperson=daoperson.fetchBYiD(id);
	if(dbperson!=null) {
		req.setAttribute("existingp", dbperson);
		RequestDispatcher requestDispatcher=req.getRequestDispatcher("updatepage.jsp");
		requestDispatcher.forward(req, resp);
	}
}
}
