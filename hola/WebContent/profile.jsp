<%@page import="lti.hola.bean.RegisterBean"%>
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
	<form action="home.jsp">
		<h1>Welcome to Programming</h1>
		<%
			RegisterBean user = (RegisterBean) session.getAttribute("user");
		%>
		<table align="center">
			<tr>
				<th colspan="2">Your Profile details</th>
			</tr>
			<tr>
				<td>Name</td>
				<td><%=user.getName()%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><%=user.getEmail()%></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><%=user.getAge()%></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><%=user.getGender()%></td>
			</tr>
			<tr>
				<td>city</td>
				<td><%=user.getCity()%></td>
			</tr>
			<tr>
				<td colspan="2"><img src="<%=user.getPhoto()%>" height="200"
					width="200"></td>
			</tr>
		</table>
	</form>
	<%@ include file="footer.html"%>


</body>
</html>