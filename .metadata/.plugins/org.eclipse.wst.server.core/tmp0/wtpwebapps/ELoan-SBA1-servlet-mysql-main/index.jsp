<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eLoan system</title>
</head>

<body>
<jsp:include page="header.jsp"/>
	<!-- write the html code to read user credentials and send it to validateservlet
	    to validate and user servlet's registernewuser method if create new user
	    account is selected
	-->
	<div align=center>
	<form action="user?action=validate" id="login" name="login"method="post">
	<div>
			<div><label for="loginid">Enter login Id</label> </div>
			<div><input type="text" id="loginid" name="loginid"> </div>
		</div>
		<br/>
		<div>
			<div><label for="password">Enter password</label> </div>
			<div><input type="password" id="password" name="password"> </div>
		</div>
		<br/>
		
			<input type="submit" value="Submit" />
			</form>
			<br/>
		<label>New User?</label>
		<a href="register.jsp">Register</a><br>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>