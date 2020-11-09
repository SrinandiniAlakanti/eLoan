<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<title>Loan Application Form</title>
</head>

	<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->
<body>
<div align=Center><h2>Loan Application</h2></div>

<div align=left>

		<form action="placeloan" method="post" name="applier">
		<div>
			<label for="loanName">Loan Description</label>
			<input type="text" id="loanName" name="loanName" required >
		</div>
		<br>
		<div>
			<label for="loanAmountRequested">Required Loan Amount(INR) </label>
			<input type="number" step="any" id="loanAmountRequested" name="loanAmountRequested" required>
		</div>
		<br>
		<div>
			<label for="loanApplicationDate">Loan Applied Date</label>
			<input type="date" id="loanApplicationDate" name="loanApplicationDate" readonly value=<%=LocalDate.now()%>>
		</div>
		<br>
		<div>
			<div><label for="businessStructure">Business Structure</label></div>
			<input type="radio" id="individual" name="businessStructure" value="individual" required>
  			<label for="individual">Individual</label>
  			<input type="radio" id="organization" name="businessStructure" value="organisation">
  			<label for="organization">Organization</label>
		</div>
		<br>
		<div>
			<div><label for="billingIndicator">Billing Indicator</label></div>
			<input type="radio" id="salaried" name="billingIndicator" value="salaried" required>
  			<label for="salaried">Salaried</label>
  			<input type="radio" id="nonSalaried" name="billingIndicator" value="non-salaried">
  			<label for="nonSalaried">Non-Salaried</label>
		</div>
		<br>
		<div>
			<div><label for="taxIndicator">Tax Indicator</label></div>
			<input type="radio" id="taxPayer" name="taxIndicator" value="tax-payer" required>
  			<label for="taxPayer">Tax-Payer</label>
  			<input type="radio" id="nontaxPayer" name="taxIndicator" value="non-tax-payer">
  			<label for="nontaxPayer">Non-Tax Payer</label>
		</div>
		<br>
		<div>
			<label for="address">Address</label>
			<input type="text" id="address" name="address" required>
		</div>
		<br>
		<div>
			<label for="phone">Contact No</label>
			<input type="number" id="phone" name="phone" required>
		</div>
		<br>
		<div>
			<label for="email">Email id</label>
			<input type="email" id="email" name="email" required>
		</div>
		<br>
		<div>
			<div><input type="submit" value="Apply Loan"></div>
		</div>
	</form>
	</div>

</body>
</html>