<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
	<title>Update Details</title>
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
    	
    	<main id="update-details">
        <div class="container">
            <div class="containerInner">
                <header class="signup_here">Enter new Details </header>
                <form onsubmit = "return validateUpdateDetailsForm()" name="updateDetailsForm" action="../../Logic/updateDetails.jsp" method="POST" autocomplete="off">
                	<label for="name">Name:</label>
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
                	<label for="password">New Password:</label>
                	<input type="text" name="password" id="password" /><br />
                	<label for="confirmpassword">Confirm New Password:</label>
                	<input type="password" name="confirmpassword" id="confirmpassword" />
                	<br />

                	<input type="submit" value="Update Details" />
            	</form>
            </div>
        </div>
    	</main>

		 <!-- Including Footer -->
    	<jsp:include page="../../Components/Footer/Footer.jsp" />
    		
    	<script src = "../../script.js"></script>
	</body>
</html>