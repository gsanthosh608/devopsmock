<%@page import="spring_mvc_basics_dto.MvcDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<%List<MvcDto> l1=(List<MvcDto>)request.getAttribute("object"); %>
<table class="a" border="5px" bordercolor="gray" cellpading="3px" cellspaceing="3px">
<tr>
<th>id</th>
<th>name</th>
<th>updating</th>
<th>deleting</th>
</tr>
<%for(MvcDto a:l1){%>
<tr>
<td><%=a.getId() %></td>
<td><%=a.getName() %></td>
<td> <a href="updele.jsp?id=<%= a.getId() %>&&name=<%=a.getName()%>">Edit</a></td>
<td><a href="delete?id=<%= a.getId() %>">Remove Data</a></td>
</tr>
<%} %>
</table>
</form>
<tr>
<td> <button type="button"><a href="deleteall">click to delete all here</a></button></td>
</tr>
</body>
</html>