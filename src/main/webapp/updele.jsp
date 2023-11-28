<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="update" method="post">

<table class="a">

<tr>
<td><label for="id" class="b">enter id</label></td>
<td> <input type="number" id="mid" name="id" required readonly="readonly" value="<%=request.getParameter("id")%>"></td>
</tr>

<tr>
<td><label for="name" class="b">enter name</label></td>
<td> <input type="text" id="mname" name="name" required value="<%=request.getParameter("name")%>"></td>
</tr>

<tr>
<td><input type="submit" value="Submit"></td>
</tr>

</table>

</form>

</body>
</html>