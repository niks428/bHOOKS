<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Register" method="post">
		<div class="container">
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>

				<label for="Name"><b>Name</b></label> <input type="text"
				placeholder="Enter Your Name" name="name" required>
				
				<label for="user Name"><b>Username</b></label> 
				<input type="text" placeholder="username" name="uname" required>
				
				 <label
				for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" required> 
				
				<label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required>
				 
				<label for="psw-repeat"><b>Repeat Password</b></label> <input
				type="password" placeholder="Repeat Password" name="password2"
				required>
				<label for="Address"><b>Enter your Address</b></label>
				
				
			<textarea name="add" rows="4" placeholder="Enter Address" required></textarea>

			<label for="phone"><b>Phone No.</b></label> <input type="text"
				placeholder="Enter Phone" name="phone" required>

			<hr>

			<button type="submit" class="registerbtn">Register</button>
		</div>

		<div class="container signin">
			<p>
				Already have an account? <a href="Login.jsp">Sign in</a>.
			</p>
		</div>
	</form>
</body>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: black;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

textarea {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: yellow;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	background-color: black;
	padding: 15px 25px;
}

button:hover {
	opacity: 0.8;
	background-color: yellow;
	color: black;
	font-size: 20px;
}

a {
	color: dodgerblue;
}

.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
</html>