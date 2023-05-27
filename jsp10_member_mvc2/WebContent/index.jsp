<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Member Management Page</title>
</head>
<body>
	<div class="container" align="center">
		<div class="jumbotron">
			<h3>Member Management</h3>
		</div>
		<a href="memberRegistForm.bo" class="btn btn-success mr-sm-2">Member Registration</a>
		<a href="memberList.bo?p-1&f=board_name&q=" class="btn btn-success">Member List</a>
	</div>
</body>
</html>