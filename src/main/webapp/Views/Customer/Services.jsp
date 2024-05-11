<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Services</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	
	<!-- Including Header -->
    <jsp:include page="../../Components/Navbar/Navbar.jsp" />
    
    <!-- Including Greeting bar -->
    <jsp:include page="../../Components/Greetbar/Greetbar.jsp" />
    
    <main id="services-page">
    	<h1>Services</h1>
    	<div class="grid-container">
        	<div class="grid-item">
            	<img src="../../Resources/Services/view-bal.png" alt="view-bal" />
            	<a class="service-link" href="ViewBal.jsp"> View Balance </a>
        	</div>
        	<div class="grid-item">
            	<img src="../../Resources/Services/withdraw.png" alt="Withdraw" />
            	<a class="service-link" href="Withdraw.jsp"> Withdraw </a>
        	</div>
        	<div class="grid-item">
            	<img src="../../Resources/Services/deposit.png" alt="Deposit" />
            	<a class="service-link" href="Deposit.jsp"> Deposit </a>
        	</div>
        	<div class="grid-item">
            	<img src="../../Resources/Services/transfer-money.png" alt="Transfer Money" />
            	<a class="service-link" href="Transfer.jsp">Transfer Money</a>
        	</div>
        	<div class="grid-item">
            	<img src="../../Resources/Services/update-details.jpg" alt="update-details" />
            	<a class="service-link" href="UpdateDetails.jsp"> update Details </a>
        	</div>
        	<div class="grid-item">
            	<img src="../../Resources/Services/apply-loan.png" alt="apply-loan" />
            	<a class="service-link" href="ApplyLoan.jsp"> Apply Loan </a>
        	</div>
    	</div>
	</main>
    		
    <!-- Including Footer -->
    <jsp:include page="../../Components/Footer/Footer.jsp" />
    
    <script src="../../script.js"></script>
</body>
</html>