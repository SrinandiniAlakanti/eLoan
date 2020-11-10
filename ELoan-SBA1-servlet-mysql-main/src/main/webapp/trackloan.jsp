<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracking loan</title>
</head>
<body>
	<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->
<jsp:include page="header.jsp" />
<div align="center"><h3>Track Loan Application</h3></div>
	<div align="right"><a href="index.jsp">Logout</a></div>
	<div align="center">
		<form action="user?action=displaystatus" name="trackapp" method="post">
		<div>
			<label for="appnumber">Enter Application No.</label> 
			<input type="number" id="appnumber" name="appnumber" required>
		</div>
		<br>
		<div><button type="submit" value="submit">Submit</button>
		</div>
	</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>