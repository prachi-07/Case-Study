<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp"/>
<form action="User.hola" method="get">
<table width="400" align="center">
			<tr>
				<h3>Enter new Password:</h3><br>
				<td center="align">Enter your email: <input type="text" name="email"></td>
			</tr>
			<tr>
				<td center="align">New Password:<input type="text" name="password"><br></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>

</form>
<%@ include file="footer.html" %>
</body>
</html>