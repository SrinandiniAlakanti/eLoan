<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewuserUI</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<!-- read user name and password from user to create account
	     and send to usercontrollers registeruser method
	-->
	
	<div align=center><h3>New user Registration</h3></div>
	<div align=left>
	<form action="registeruser" method="post">
		
		<div>
			<label for="username">User Name</label>
			<input type="text" id="username" name="username">
		</div>
		<br/>
		<div>
			<label for="loginid">Login Id</label>
			<input type="text" id="loginid" name="loginid">
		</div>
		<br/>
		<div>
			<label for="password">Password</label>
			<input type="password" id="password" name="password"/>
		</div>
		<br/>
		<div>
			<label for="confirmpassword">Confirm Password</label>
			<input type="text" id="confirmpassword" name="confirmpassword">
		</div>
		<br/>
		<div>
			<label for="phonenumber">Contact Number</label>
			<input type="text" name="phonenumber" pattern="[7-9]{1}[0-9]{9}" 
			title="Enter 10 digit phone number">
		</div>
		<br/>
		<div>
			<label for="email">Email:</label>
  			<input type="text" id="email" name="email"/>
		</div>
		<br/>
		
			<input type="submit" value="Submit" />
	</form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>