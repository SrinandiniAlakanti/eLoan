<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMI</title>
</head>
<body>
	<!--
     Read the values from the admin servlet and cal emi and other details and send to
     to the same admin servlet to update the values in the database 
  -->
<div align=Center><h2>Loan Approval</h2></div>
	<c:choose>
		<c:when test="${processed}">
			<h3>This loan is already processed , any changes will modify the
				loan</h3>
		</c:when>
	</c:choose>
	<div>
		<label for="status">Loan Application Status</label> <label
			for="status">${loan.getStatus()}</label>
	</div>
	<br/>
	<div>
		<label for="applicationNo">Loan Application No</label> <input
			type="number" id="applicationNo" name="applicationNo"
			value="${loan.getApplno()}" readonly>
	</div>
	<br />
			<div>
			<label for="loanName">Loan Description</label> <input type="text"
				id="loanName" name="loanName" value="${loan.getPurpose()}" readonly>
		</div>
		<br/>
		<div>
			<label for="loanAmountRequested">Required Loan Amount </label>
			 <input type="number" step="any" id="loanAmountRequested" name="loanAmountRequested"
				value="${String.format('%.2f',loan.getAmtrequest()) }" readonly>
		</div>
		<br/>
		<div>
			<label for="loanApplicationDate">Loan Application Date</label>
			<input type="date" id="loanApplicationDate" name="loanApplicationDate" 
			value="${loan.getDoa() }" readonly>
			</div>
		<br/>
			<div>
				<label for="businessStructure">Business Structure</label>
				<input type="text" id="businessStructure" name="businessStructure"
					value="${loan.getBstructure() }" readonly>
			</div>
		<br/>
			<div>
				<label for="billingIndicator">Billing Indicator</label>
				<input type="text" id="billingIndicator" name="billingIndicator"
					value="${loan.getBindicator() }" readonly>
			</div>
		<br/>
			<div>
				<label for="taxIndicator">Tax Indicator</label>
				<input type="text" id="taxIndicator" name="taxIndicator"
					value="${loan.getTindicator()}" readonly>
			</div>
		<br/>
			<div>
			<label for="address">Address</label>
			<input type="text" id="address" name="address" size="40"
					value="${loan.getAddress()}" readonly>
				</div>
			<br/>
		<div>
			<label for="phone">Contact No</label>
			<input type="number" id="phone" name="phone"
					value="${loan.getMobile()}" readonly>
			</div>
			<br/>
		<div>
		<label for="email">Email</label>
			</div>
			<div>
				<input type="email" id="email" size="30" name="email"
					value="${loan.getEmail()}" readonly>
			</div>
		<br/>
		<hr>
		<form action="updatestatus" method="post" name="Approval">
		
			<div>
				<label for="amountSactioned">Amount Sanctioned</label>
				<input type="number" id="amountSactioned" name="amountSactioned" 
				value="${aloan.getAmotsanctioned() }" required>
				</div>
			<br/>
			<div>
				<label for="loanTerm">Tenure Of Loan(Years)</label>
				<input type="number" id="loanTerm" name="loanTerm"
						value="${aloan.getLoanterm() }" required>
				</div>
			<br/>
			<div>
					<label for="rate">Interest Rate</label>
					<input type="number" id="rate" name="rate"
						value="${aloan.getRate() }" required>
				</div>
			<br/>
			<div>
				<label for="startDate">Payment Start Date</label>
				<input type="Date" id="startDate" name="startDate"
						value="${aloan.getPsd() }" required>
				</div>
						<br>
			<div>
				<div>
				<input type="submit" value="Approve" name="approve">
				</div>
			</div>
		</form>
		<br/>
		<form action="updatestatus" method="post">
			<div>
				<button name="reject">Reject</button>
			</div>
		</form>
</body>
</html>