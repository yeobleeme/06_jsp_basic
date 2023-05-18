<%@page import="com.lec.web.service.WriteMessageService"%>
<%@page import="com.lec.web.model.Message"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	Message message = new Message();
	message.setGuestName(request.getParameter("guestName"));
	message.setPassword(request.getParameter("password"));
	message.setMessage(request.getParameter("message"));
%>
<%-- 
<jsp:useBean id="message" class="com.lec.web.model.Message" >
	<jsp:setProperty name="message" property="*"/>
</jsp:useBean> 
--%>
<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);
	
	// redirect 하는 방법 (1)
	// response.sendRedirect("list.jsp");
%>
<!-- redirect 하는 방법 (2) -->
<%-- <jsp:forward page="list.jsp"/> --%>

<script>
	// redirect 하는 방법 (3)
	//window.location = "list.jsp";
</script>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h3>Write Guestbook</h3>
		<p class="bg-success text-white">Message Registered Successfully</p>
		<a class="btn btn-primary" href="list.jsp">Guestbook List</a>
	</div>
</body>
</html>