<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Processing</title>
</head>
<body>
	<!-- write the code to read application number, and send it to admincontrollers
	     callemi method to calculate the emi and other details also provide links
	     to logout and admin home page
	-->
	<jsp:include page="header.jsp" />
	<div align="right">
		<a href="index.jsp">Logout</a><br /> <a href="adminhome1.jsp">Admin
			home</a>
	</div>
	<div align="center">
		<h3>Application Process</h3>
	</div>
		<div align="center">
	<form action="user?action=callemi" name="application" method="post">
		<div>
			<label for="applicationNo">Application No</label>
			<input type="number" id="Appno" name="Appno" required>
		</div>
		<br>
		<div><button type="submit">Submit</button></div>
	</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>