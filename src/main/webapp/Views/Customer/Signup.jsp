<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>SignUp</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	<!-- Including Header -->
    <jsp:include page="../../Components/Navbar/Navbar.jsp" />
    
    <!-- Including Greeting bar -->
    <jsp:include page="../../Components/Greetbar/Greetbar.jsp" />
    <section id="signup-form">
    	<div class="container">
        	<div class="containerInner">
            	<header class="signup_here">Customer SignUp</header>
            	<form onsubmit = "return validateSignupForm()" name="signupForm" action="../../Logic/signUp.jsp" method="POST" autocomplete="off">
                	<label for="firstname">Name:</label>
                	<input type="text" name="name" id="name" /> <br />
                	<label for="email">Email:</label>
                	<input type="text" name="email" id="email" /> <br />
                	<label for="gender">Gender:</label>
                	<input type="radio" name="gender" value="M" id="male" checked />
                	<label for="male" style="display: inline">Male</label>
                	<input type="radio" name="gender" value="F" id="female"/>
                	<label for="female" style="display: inline">Female</label>
                	<br />
                	<label for="phone">Phone:</label>
                	<input type="text" name="phone" id="phone" /> <br />
                	<label for="pincode">Pincode:</label>
                	<input type="text" name="pincode" id="pincode" /><br />
                	<label for="openbal">Opening Balance:</label>
                	<input type="text" name="openbal" id="openbal" /> <br />
                	<label for="password">Password:</label>
                	<input type="text" name="password" id="password" /><br />
                	<label for="confirmpassword">Confirm Password:</label>
                	<input type="password" name="confirmpassword" id="confirmpassword" />
                	<br />

                	<input type="submit" value="Register" />
            	</form>
            	<p>Already have account? <a href="Signin.jsp">Sign in</a></p>
        	</div>
    	</div>
	</section>
    
     <!-- Including Footer -->
    <jsp:include page="../../Components/Footer/Footer.jsp" />
    
    <script src = "../../script.js"></script>
</body>
</html>