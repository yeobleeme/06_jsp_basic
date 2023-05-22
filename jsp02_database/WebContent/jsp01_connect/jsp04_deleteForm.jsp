<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = "";
	String name = "";
	String email = "";
	
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:mariadb://localhost:3306/jspstudy";
	String usr = "root";
	String pwd = "12345";
	String sql = "select * from member where id = '" + id + "'";
	
	try {
		conn = DriverManager.getConnection(url, usr, pwd);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()) {
			pw = rs.getString("password");
			name = rs.getString("name");
			email = rs.getString("email");
		} else {
			out.println("<h3 class='bg-danger text-white'>Member Delete Failed </h3>");
		}
		} catch(Exception e) {
			out.println("<h3 class='bg-danger text-white'>DB Connection Failed</h3> <br />"
					+ e.getMessage());
		} finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				// dummy
			}
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
		<h1>Delete Member</h1>
		
		<form action="jsp04_deleteMember.jsp" method="post">
			<table class="table table-bordered table-dark table-hover">
					<td width="20%">ID</td>
					<td><input type="text" name="id" class="form-control" size="30" disabled value="<%= id %>"></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw" class="form-control" size="30" disabled value="<%= pw %>"></td>
				</tr>
				<tr>
					<td>NAME</td>
					<td><input type="text" name="name" class="form-control" size="30" disabled value="<%= name %>"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email" class="form-control" size="30" disabled value="<%= email %>"></td>
				</tr>			
			</table>
			<input type="hidden" name="id" value="<%= id %>"/>
			<input type="submit" class="btn btn-info mt-sm-2" value="DELETE"/>
			<a href="jsp05_listMember.jsp" class="btn btn-primary mt-sm-2">Member list</a>
		</form>
	</div>
</body>
</html>


