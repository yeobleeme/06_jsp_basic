package com.lec.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mariadb.jdbc.client.socket.impl.PacketWriter;

// @WebServlet("/hello")  // localhost:8088/jsp04_servlet/hello
public class HelloWorld extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<head><title>Current Time</title></head>");
		out.println("<body>");
		out.println("<h1>Hello, JSP/Servelet.</h1>");
		out.println("<h1>doGet() Called.</h1>");
		
		out.println("<h1>Current Time(web.xml)</h1>");
		out.println("<h3>" + new Date() + "</h3>");
		
		
		out.println("</body>");
		out.println("</html>");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		doGet(req, res);
	}
}
