<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>SignIn</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	<!-- Including Header -->
    <jsp:include page="../../Components/Navbar/Navbar.jsp" />
    
    <!-- Including Greeting bar -->
    <jsp:include page="../../Components/Greetbar/Greetbar.jsp" />
    
    <section id="login-form">
    	<div class="container">
        	<div class="containerInner">
            	<form onsubmit = "return validateCustomerSigninForm()" name="loginForm" method="post" action="../../Logic/signIn.jsp">
                	<header class="login_here">Customer Login</header>
                	<main class="inputs">
                    	<label for="accountNo">Account Number:</label>
                    	<input type="text" id="username" name="accountNo" class="custom-input" autocomplete="off" />
                    	<label for="pass"> Password:</label>
                    	<input type="password" id="password" name="pass" class="custom-input" autocomplete="off"/>
                    	<input type="submit" value="Sign In" />
                    	<p> 
                    		Don't have account?
                        	<a href="Signup.jsp">Create new</a>
                    	</p>
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