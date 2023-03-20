<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration</title>
</head>
<body>
	<h2>Create new registration</h2>
	<form action="saveReg" method="post">
		<pre>
			name   <input type="text" name="name"/><br/>
			city   <input type="text" name="city"/><br/>
			email  <input type="text" name="email"/><br/>
			mobile <input type="text" name="mobile"/><br/>
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