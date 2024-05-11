<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registration Success</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	<!-- Including Header -->
    <jsp:include page="../../Components/Navbar/Navbar.jsp" />
    
    <!-- Including Greeting bar -->
    <jsp:include page="../../Components/Greetbar/Greetbar.jsp" />
    
    <main id="reg-success">
    	<div class="container">
        	<div class="containerInner">
            	<p class="success-message">Registration Successful
                	<span class="tick-icon">&#10004;</span>
            	</p>
            	<main class="inputs">
                	<p> A/C No: <%= session.getAttribute("randomAcno") %> </p>
                	<p> Password: <%= session.getAttribute("password") %> </p>
                	<%
                		session.setAttribute("randomAcno", null);
                		session.setAttribute("password", null);
                	%>
                	<p class="next" onclick="window.location.href='Signin.jsp'">
                    	Login As Customer
                	</p>
            	</main>
        	</div>
    	</div>
	</main>
	
     <!-- Including Footer -->
    <jsp:include page="../../Components/Footer/Footer.jsp" />
</body>
</html>