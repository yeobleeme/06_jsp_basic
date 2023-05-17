<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String value = "안녕하세요.";

	// sendRedirect 한글이 포함되어 있는 경우 인코딩해서 전달해야 한다.
	// jsp09_parameters.jsp?hello=안녕하세요? 형태로 전달된다면 에러가 발생한다.
			
	value = URLEncoder.encode(value, "UTF-8");
	// 안녕하세요. 인코딩 -> %EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.
	
	// URLDecoder
	// %EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94. -> 안녕하세요.
	// value = URLDecoder.decode(value, "UTF-8");
	
	response.sendRedirect("jsp09_parameters.jsp?hello=" + value);
%>


