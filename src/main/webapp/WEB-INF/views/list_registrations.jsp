<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registrations</title>
</head>
<body>
	<h2>All Registrations...</h2>
	<table>
		<tr>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<%
			ResultSet res = (ResultSet)request.getAttribute("result");
			while(res.next()){
		%>
		<tr>
			<td><%=res.getString(1) %></td>
			<td><%=res.getString(2) %></td>
			<td><%=res.getString(3) %></td>
			<td><%=res.getString(4) %></td>
			<td><a href="delete?email=<%=res.getString(3)%>">delete</a></td>
			<td><a href="update?email=<%=res.getString(3)%>&mobile=<%=res.getString(4)%>">update</a></td>
		</tr>
		<%}%>
	</table>
</body>
</html>