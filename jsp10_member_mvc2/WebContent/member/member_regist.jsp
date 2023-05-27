<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
		integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
		crossorigin="anonymous">  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Member Registration Page</title>
  	<style>
  		.login-btn {
  			clear: black;
  			background-color: #FFC312; 
  			width: 100px;
  		}
  		.login-btn:hover {
  			clear: white;
  			background-color: black;  		
  		}
  		.input-group-prepend span {
  			color: black;
  			border-left-color: #FFC312;
  			width: 40px;
  			border: 0 !important;
  		}
  	</style>	
</head>
<body>
	<div class="container" align="center">
		<div class="jumbotron">
			<h3>Member Registration</h3>
			<p>Please input information for registration</p>
		</div>
		
		<form action="memberRegist.bo" method="post" class="form-group" name="boardform">
				
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="id" id="id" value="ID" required placeholder="">
			</div>
			
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-key"></i></span></div>
				<input type="text" class="form-control" name="pw" id="pw" value="PW" required placeholder="">
			</div>
			
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="name" id="name" value="NAME" required placeholder="">
			</div>
			
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="age" id="age" value="AGE" required placeholder="">
			</div>
			
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="gender" id="gender" value="GENDER" required placeholder="">
			</div>
			
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="email" id="email" value="E-MAIL" required placeholder="">
			</div>
			
			
				
			<div class="form-group mt-md-5">
				<input type="reset" class="btn btn-success float-right login-btn ml-sm-2" value="Refresh"/>
				<input type="submit" class="btn btn-success float-right login-btn" value="Finish"/>
			</div>
			
		</form>
	</div>
	
	
</body>
</html>















