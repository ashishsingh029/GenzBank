<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>GenzBank</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="icon" href="favicon.png" type="image/png" />
</head>
<body>
	
    <!-- Including Header -->
    <jsp:include page="Components/Navbar/Navbar.jsp" />
    
    <!-- Including Greeting bar -->
    <jsp:include page="Components/Greetbar/Greetbar.jsp" />
    
    <!-- Including Banner -->
    <jsp:include page="Components/Banner/Banner.html" />
    
    <!-- Including The Services Content -->
    <jsp:include page="Components/Main/Main.jsp" />
					
    <!-- Including Footer -->
    <jsp:include page="Components/Footer/Footer.jsp" />
    
    <script src="script.js"></script>
</body>
</html>
