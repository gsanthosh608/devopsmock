<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <style type="text/css">
 
 
 body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    width: 400px;
    margin: 100px auto;
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.signup-form {
    text-align: center;
}

.signup-form h2 {
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0056b3;
}
 
 </style>

</head>
<body>

<form action="loginpage">
 <div class="container">
        <form action="/signup" method="post" class="signup-form">
            <h2>Sign Up</h2>
            <div class="form-group">
                <label for="username">id:</label>
                <input type="number" id="username" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">Name:</label>
                <input type="text" id="password" name="name">
            </div>
            <div class="form-group">
                <label for="confirmPassword">Password:</label>
                <input type="password" id="confirmPassword" name="passwd" required>
            </div>
            <button type="submit">Sign Up</button>
        </form>
    </div>
</form>
</body>
</html>