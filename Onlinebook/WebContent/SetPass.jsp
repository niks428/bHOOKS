<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body >

<!-- cheks for user cache & login session -->
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session.getAttribute("email") == null && session.getAttribute("uname") == null )
			response.sendRedirect("Login.jsp");
	%>

	<h2 align="center">bHOOKS </h2>
	<form method="post" action="CheckedResetPass">
		<div class="container">
			<label for="pass"><b>Password</b></label> 
			
			<input type="password" placeholder="Enter Password" name="pass">
				 <label for="psw2"><b>Repeat Password</b></label> 
				 <input type="password" placeholder="Repeat Password" name="pass2" >
			<button type="submit">Reset</button>
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




</body>
</html>