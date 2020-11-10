<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="right">
		<a href="adminhome1.jsp">Admin Home</a>
	</div>
	<div align="center">
		<h3>Edit Loan</h3>
	</div>
	<form action="user?action=editLoanProcess" method="post" name="Editing">

		<div>
			<label for=applicationno>Loan ApplicationNo</label> 
			<input type="text" id="applicationno" name="applicationno" value="${loan.getApplno()}" readonly>
		</div>
		<br />
		<div>
			<label for="loandesc">Loan Description</label> 
			<input type="text" id="loandesc" name="loandesc" value="${loan.getPurpose()}">
		</div>
		<br/>
		<div>
			<label for="amountrequest">Amount Requested</label> 
			<input type="number" id="amountrequest" name="amountrequest"
				value="${String.format('%.1f',loan.getAmtrequest()) }">
		</div>
		<br/>
		<div>
			<label for="loantakendate">Loan app Date</label> 
			<label for="loantakendate"> ${loan.getDoa() }</label>
		</div>
		<br/>
		<div>
			<label for="bstructure">Business Structure</label> 
			<input type="radio" id="orgnisation" name="bstructure" value="organisation"
				<c:if test="${loan.getBstructure()=='organisation'}">checked</c:if>>
			<label for="organization">Organization</label>
			<input type="radio" id="individual" name="bstructure" value="individual"
				<c:if test="${loan.getBstructure()=='individual'}">checked</c:if> > 
			<label for="individual">Individual</label> 
			
		</div>
		<br>
		<div>
			<label for="billingind">Billing Indicator</label> 
			<input type="radio" id="salaried" name="billingind" value="salaried"
				<c:if test="${loan.getBindicator()=='salaried'}">checked</c:if>>
			<label for="salaried">Salaried</label>
			 <input type="radio" id="non-salaried" name="billingind" value="non-salaried"
				<c:if test="${loan.getBindicator()=='non-salaried'}">checked</c:if>>
			<label for="nonSalaried">Non-Salaried</label>
		</div>
		<br>
		<div>
			<label for="taxind">Select Tax Indicator</label> 
			<input type="radio" id="taxPayer" name="taxind" value="tax-payer"
				<c:if test="${loan.getTindicator()=='tax-payer'}">checked</c:if>>
			 <label for="taxPayer">Tax-Payer</label> 
			 <input type="radio" id="nontaxPayer" name="taxind" value="nontax-payer"
				<c:if test="${loan.getTindicator()=='nontax-payer'}">checked</c:if>>
			<label for="nontaxPayer">NonTax-Payer</label>
		</div>
		<br>
		<div>
			<label for="contactno">ContactNo</label> 
			<input type="number" id="contactno" name="contactno" value="${loan.getMobile()}" required>
		</div>
		<br>
		<div>
			<label for="address">Address</label> 
			<input type="text" id="address" name="address" value="${loan.getAddress()}" required>
		</div>
		<br>
		
		<div>
			<label for="email">Email id</label> 
			<input type="email" id="email" name="email" value="${loan.getEmail()}" required>
		</div>
		<br>
		<div>
			<input type="submit" value="Update">
		</div>
	</form>
	<jsp:include page="footer.jsp" />
</body>
</html>