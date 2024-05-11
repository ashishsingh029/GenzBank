<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
	<title>Apply Loan</title>
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
    	
    	<main id="apply-loan">
        <div class="container">
            <div class="containerInner">
                <form onsubmit = "return validateApplyLoanForm()" name="applyLoanForm" method="post" action="../../Logic/applyLoan.jsp">
                    <header class="login_here">Enter Loan Details</header>
                    <main class="inputs">
                        <label for="accountNo">Enter Loan Type</label>
                        <input type="text" id="username" name="ltype" class="custom-input" autocomplete="off" />
                        <label for="accountNo">Enter Amount</label>
                        <input type="text" id="username" name="amount" class="custom-input" autocomplete="off" />
                        <label for="pass">Confirm Amount</label>
                        <input type="text" id="password" class="custom-input" autocomplete="off" />
                        <input type="submit" value="Apply Loan" />
                    </main>
                </form>
            </div>
        </div>
    </main>
    
	<!-- Including Footer -->
    <jsp:include page="../../Components/Footer/Footer.jsp" />
    
    <script src = "../../script.js"></script>
	</body>
</html>