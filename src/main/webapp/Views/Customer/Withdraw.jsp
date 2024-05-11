<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
	<title>Withdraw</title>
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
    
        <section id="withdraw-section">
            <div class="container">
                <div class="containerInner">
                    <form onsubmit = "return validateWithdrawForm()" name="withdrawForm" method="post" action="../../Logic/withdraw.jsp">
                        <header class="login_here">
                            Enter Amount to Withdraw
                        </header>
                        <main class="inputs">
                            <label for="accountNo">Enter Amount</label>
                            <input type="text" id="username" name="amount" class="custom-input" autocomplete="off" />
                            <label for="pass"> Confirm Amount</label>
                            <input type="text" id="password" class="custom-input" autocomplete="off" />
                            <input type="submit" value="Withdraw" />
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