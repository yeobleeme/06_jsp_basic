<%@page import="com.lec.web.exception.InvalidPasswordException"%>
<%@page import="com.lec.web.exception.MessageNotFoundException"%>
<%@page import="com.lec.web.service.DeleteMessageService"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String pw = request.getParameter("pw");
	
	boolean invalidPass = false;
	
	DeleteMessageService deleteService = DeleteMessageService.getInstance();
	
	try {
		deleteService.deleteMessage(id, pw);
	} catch(InvalidPasswordException e) {
		invalidPass =true;
	}
	
	
	
	
%>
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
      <h3>Delete Message</h3>
      <% if(!invalidPass) { %>
              <h4 class="bg-success text-white">Message Deleted Successfully</h4>
      <% } else { %>
           <h4 class="bg-danger text-white">Wrong Password. Try Again.</h4>  
      <% } %>
      <br />
      <a href="list.jsp" class="btn btn-primary">Guestbook List</a>
   </div>
</body>
</html>