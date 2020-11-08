<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Form</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body onload="myFunction()">

	<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->
	<h2>Loan Application</h2>
	<form action="application1" method="post">
		<div>
			<label for="loanname">Loan Description</label>
			<input type="text" id="loanname" name="loanname" required>
		</div>
		<br/>
		<div>
		<label for="loanapplicationnumber">Loan Application Number</label>
			<%= (int) (Math.random() * 10000) %>
		</div>
		<br/>
		<div>
			<label for="loanamount">Loan Amount</label>
			<input type="number" id="loanamount" name="loanamount" required>
		</div>
		<div>
			<label for="loanapplicationdate">Date</label>
			<%!LocalDate date= LocalDate.now();%>
			<span><%=date%></span>
		</div>
	
		
	</form>


</body>
</html>