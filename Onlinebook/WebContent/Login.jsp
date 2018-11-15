
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
	<h2 align="center">Online Book Publishing System</h2>
	
	
	<form method="post" action="LoginController">
		<div class="container">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="uname">
				 <label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" >

			<button type="submit" name="action" value="login">Login</button>
			<button type="submit" name="action" value="forgotPassword">Forgot Password?</button>
			<button type="submit" name="action" value="register">Sign Up</button>
			
		</div>
	</form>
</body>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {

	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	color: yellow;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	background-color: black;
    text-align: center;
    font-size: 20px;
    padding: 15px 25px;
}

button:hover {
	opacity: 0.8;
	background-color: yellow;
    color: black;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}
</style>
</html>