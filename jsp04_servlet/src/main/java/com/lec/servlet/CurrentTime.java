package com.lec.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:8088/jsp04_serblet
// 1. /now, /curr, /zzz/*
// 2. ?user=root&pass=12345
@WebServlet(urlPatterns = {"/now", "/curr", "/zzz/*"}, 
			initParams = {@WebInitParam(name="user", value="root"),
					      @WebInitParam(name="pass", value="12345"),
						}
		)
public class CurrentTime extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<head><title>Current Time</title></head>");
		out.println("<body>");
		
		out.println("<h1>Current Time</h1>");
		out.println("<h3>" + new Date() + "</h3> <hr>");
		
		out.println("<h1>Init Parameter(@WebInitParam)</h1>");
		out.println("<h3> user = " + getInitParameter("user") + "</h3>");
		out.println("<h3> pass = " + getInitParameter("pass") + "</h3>");
		
		out.println("</body>");
		out.println("</html>");
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		doGet(req, res);
	}

}















