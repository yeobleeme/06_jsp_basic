<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<!-- jsp01_menu.jsp, jsp01_footer.jsp, jsp01_sub.jsp -->
	
	<%@include file="jsp01_menu.jsp" %>
	
	<div class="container">
		<h1>jsp01_main.jsp</h1>
		<%-- <%@include file="jsp01_sub.jsp" %> --%>
		<jsp:include page="jsp01_sub.jsp" flush="flase"/>
		<h1>include이후의 내용....</h1>
	</div>
	<%@include file="jsp01_footer.jsp" %>
</body>
</html>