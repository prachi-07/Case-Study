<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="banner.jsp" />
	<%
		if (request.getParameter("invalid") != null) {
	%>
	<font size="3" color="Red">Invalid email id / movie</font>
	<%
		}
	%>
	<form action="User.hola" method="get">

		<table width="400" align="center">
			<tr>
				<h3>What is your favourite Movie?</h3>
				<br>
				<td center="align">Movie Name: <input type="text" name="movie"></td>
			</tr>
			<tr>
				<td center="align">User Name:<input type="text" name="email"><br></td>
			</tr>
			<tr>
				<td><input type="submit" value="Proceed"></td>
			</tr>
		</table>
	</form>
	<%@ include file="footer.html"%>
</body>
</html>