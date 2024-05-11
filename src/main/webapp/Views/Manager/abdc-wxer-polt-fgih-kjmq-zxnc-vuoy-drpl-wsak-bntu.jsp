<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Manager SignIn</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	<header class="topnav"> 
		<span style="margin:auto;display:flex;align-items:center"> 
			<img src="<%=request.getContextPath() %>/Resources/Navbar/logo.png" width="50" height="50" alt="GenzBank Icon"/>
	    	<span class="bank-name"> GenzBank </span>
	    </span>
    </header>
    <section id="login-form">
    	<div class="container">
        	<div class="containerInner">
            	<form onsubmit = "return validateManagerLoginForm()" name="mLoginForm" method="post" action="../../Logic/mLogin.jsp">
                	<header class="login_here">Manager Login</header>
                	<main class="inputs">
                    	<label for="accountNo">Unique Id:</label>
                    	<input type="text" id="username" name="unid" class="custom-input" autocomplete="off" />
                    	<label for="pass"> Password:</label>
                    	<input type="password" id="password" name="pass" class="custom-input" autocomplete="off"/>
                    	<input type="submit" value="Sign In" />
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