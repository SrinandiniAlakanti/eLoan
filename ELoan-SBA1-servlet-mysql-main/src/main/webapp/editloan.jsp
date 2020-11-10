<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Loan Application</title>
</head>
<body>
	<!-- read the application number to edit from user and send to 
	     user controller to edit info
	-->
<jsp:include page="header.jsp" />
<div align="center"><h3>Edit Application</h3></div>
	<div align="right"> <a href="index.jsp">Logout</a></div>
<div align="left">
  	<form action="user?action=editloan" method="post">
  	<div><label for="applicationno">Application No</label>
			<input type="number" id="applicationno" name="applicationno" required>
		</div><br/>
			<button type="submit">Submit</button>
  	</form>
  	  	</div>
  	  	<jsp:include page="footer.jsp"/>
</body>
</html>