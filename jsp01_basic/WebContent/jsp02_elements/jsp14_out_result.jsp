<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<!-- 실습. 아래와 같이 출력하기
     ID : hong
	 PW : 12345 -->
	 <%
	 request.setCharacterEncoding("utf-8");
	 String id = request.getParameter("userid");
	 String pw = request.getParameter("userpw");
	 %>
	 ID : <%= id %> <br>
	 PW : <%= pw %>
	 <hr />
	 ID : <% out.println(id); %> <br>
	 PW : <% out.println(pw); %>
	 
</body>
</html>