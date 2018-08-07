<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp"/>

	<form action="User.hola">
		<table width="400" align="center">
			<tr><th colspan="2">Registration Form</th></tr>
			<tr><td align='center'><label for="name"><b>Name: </b></label></td>
				<td><input type='text' placeholder="Enter Your Name"
				name="name" required></td>
			</tr>
			<tr><td align='center'><label for="email"><b>Email: </b></label></td>
				<td><input type="text" placeholder="Enter Email" name="email"
				pattern="[^ @]*@[^ @]*" required></td>
			</tr>
			<tr><td align='center'><label for="password"><b>Password:</b></label></td>
					<td><input type="password" placeholder="Enter Password"
						name="password" required 
						title="Must contain at least one number and one uppercase and lowercase letter, 
    		and at least 8 or more characters"></td>
				</tr>

				<tr>
					<td align='center'><label for="age"><b>Age: </b></label></td>
					<td><!-- <input type="number" placeholder="Enter Age" name="age"> -->
					<select name="age">
						<%
							for (int a = 18; a <= 60; a++) {
						%>
						<option value="<%=a%>"><%=a%></option> 
						<%} %></select></td>
				</tr>

				<tr>
					<td align='center'><label for="gender"><b>Gender:
						</b></label></td>
					<td><input type="radio" name="gender" value="Male">Male</td>
					<td><input type="radio" name="gender" value="Female">Female</td>
				</tr>

				<tr>
					<td align='center'><label for="city"><b>City: </b></label></td>
					<td><select name="city">
						<%	String[] cities = { "Mumbai", "Pune", "Mangalore", "Noida", "Kanpur" };
							for (String ct : cities) {	%>
						<option value="<%=ct%>"><%=ct%></option>
						<%
							}
						%>
					</select></td>
				</tr>

				<tr>
					<td align='center'><label for="movie"><b>Favourite Movie: </b></label></td>
					<td><input type="text" placeholder="Enter Your Answer"
						name="movie"></td>
				</tr>
				
				<tr><td>Photo</td><td><input type="file" name="photo"></td></tr>

				
				<tr>
					<th colspan="2"><input type="submit" value="Register"></th>
				</tr>
			</table>
		
	<%@ include file="footer.html" %>

	</form>
	
</body>
</html>