<%@page import="spring_mvc_basics_dto.MvcDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%MvcDto id=(MvcDto) request.getAttribute("object"); %>
<table class="a" border="" cellpadding="3px" cellspaceing3px>
<tr>
<td>id</td>
<td>name</td>
</tr>
<tr>
<td><%=id.getId() %></td>
<td><%=id.getName() %></td>
</tr>
</table>
</body>
</html>