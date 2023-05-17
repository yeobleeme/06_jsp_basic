<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("오늘의 날짜 및 현재시간" + "<br>");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
	<form action="jsp14_out_result.jsp" method="post">
		ID : <input type="text" name="userid" /><br />
		PW : <input type="password" name="userpw" /><br />
		<input type="submit" value="전송"/>
	</form>
</body>
</html>