<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update registration</title>
</head>
<body>
	<h2>Update registration</h2>
	<form action="update" method="post">
		<pre>
			email  <input type="text" name="email" value="<%=request.getAttribute("email")%>"/><br/>
			mobile <input type="text" name="mobile" value="<%=request.getAttribute("mobile")%>"/><br/>
			<input type="submit" value="save"/>
		</pre>
	</form>
	<br/>
	
	<%
		if(request.getAttribute("msg")!=null){
			out.println(request.getAttribute("msg"));
		}
	%>
	
</body>
</html>