<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f3f3f3;
	margin: 0;
}

.login-container {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 40px;
	width: 300px;
	text-align: center;
}

.login-container h2 {
	margin-bottom: 20px;
	color: #333;
}

.login-container input[type="text"], .login-container input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.login-container input[type="submit"] {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: none;
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.login-container input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<form action="loginpage">
		<div class="login-container">
			<h2>Parent Login</h2>
			<input type="number" placeholder="id" name="id"> <input
				type="text" placeholder="Username" name="name"> <input
				type="text" placeholder="Password" name="passwd">
			<button type="submit">Login</button>
		</div>
	</form>
</body>
</html>