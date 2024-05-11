<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
	<title>Transfer Money</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	<% 
		String root = request.getContextPath();
		boolean isLoggedIn = session.getAttribute("userName") != null;
	%>
	
	<!-- including check to check whether the customer is logged in or not  -->
	<script>
		let isLoggedIn = <%= isLoggedIn %>
		if(!isLoggedIn) {
			alert("You need to Login First");
			window.location.href = "<%= root %>/Views/Customer/Signin.jsp";
		}
	</script>
		<!-- Including Header -->
    	<jsp:include page="../../Components/Navbar/Navbar.jsp" />
    
    	<!-- Including Greeting bar -->
    	<jsp:include page="../../Components/Greetbar/Greetbar.jsp" />
    	
    	<section id="transfer-section">
	        <div class="container">
	            <div class="containerInner">
	                <form onsubmit = "return validateTransferForm()" name="transferForm" method="post" action="../../Logic/transfer.jsp">
	                    <header class="login_here">Enter Details</header>
	                    <main class="inputs">
	                        <label for="accountNo">Enter Receiver's Account Number</label>
	                        <input type="text" id="username" name="acno" class="custom-input" autocomplete="off" />
	                        <label for="pass"> Enter Amount</label>
	                        <input type="text" id="password" name="amount" class="custom-input" autocomplete="off" />
	                        <label for="pass"> Confirm Amount</label>
	                        <input type="text" id="password" class="custom-input" autocomplete="off" />
	                        <input type="submit" value="Transfer" />
	                    </main>
	                </form>
	            </div>
	        </div>
    	</section>

		 <!-- Including Footer -->
    	<jsp:include page="../../Components/Footer/Footer.jsp" />
    		
    	<script src = "../../script.js"></script>
	</body>
</html>