<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User Details</title>
	<link rel="stylesheet" href="../../style.css" />
    <link rel="icon" href="../../favicon.png" type="image/png" />
</head>
<body>
	<% 
		String root = request.getContextPath();
		boolean isLoggedIn = session.getAttribute("mUserName") != null;
	%>
	
	<!-- including check to check whether the customer is logged in or not  -->
	<script>
		let isLoggedIn = <%= isLoggedIn %>
		if(!isLoggedIn) {
			alert("You need to Login First");
			window.location.href = "<%= root %>/Views/Manager/abdc-wxer-polt-fgih-kjmq-zxnc-vuoy-drpl-wsak-bntu.jsp.jsp";
		}
	</script>

	<header class="topnav">
		<span style="margin:auto;display:flex;align-items:center"> 
			<img src="<%=request.getContextPath() %>/Resources/Navbar/logo.png" width="50" height="50" alt="GenzBank Icon"/>
    		<span class="bank-name"> GenzBank </span>
    	</span>
    </header>
    
    <!-- Including Greeting bar -->
    <jsp:include page="../../Components/Greetbar/Greetbar.jsp" />
    <%@ include file = "../../Logic/DBConn.jsp"  %>
    <section class="manager-view2">
	    <div class="container">
	        <div class="container-item">
	        <%
    		sm = con.prepareStatement("select t1.*, t2.bal, t2.uname from cust_info t1, user_bal t2 where t1.acno = t2.acno and t1.acno = ?");
	        int acno = Integer.parseInt(request.getParameter("ac-number"));
    		sm.setInt(1,acno);
    		rs = sm.executeQuery();
    		rs.next();
    		String name =rs.getString("uname");
    		String email = rs.getString("email");
    		String gender = (rs.getString("gender").equals("M"))?"Male":"Female";
    		long phone = rs.getLong("phone");
    		long pin = rs.getInt("pin");
    		double bal = rs.getDouble("bal");
    	%>    
	            <p class="sub-heading" style="text-decoration: underline;font-size: 30px;font-weight: bold;"> Details </p>
	            <table>
	                    <tbody>
	                        <tr>
	                            <td>
	                                <strong>Name: </strong> <%= name %> 
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>
	                                <strong>Account Number: </strong> <%= acno %>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>
	                                <strong>Email: </strong> <%= email %>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>
	                                <strong>Gender: </strong> <%= gender %>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>
	                                <strong>Phone: </strong> <%= phone %>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>
	                                <strong>PinCode: </strong> <%= pin %>
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	        </div>
	        <div class="container-item" style="padding-top:20vh;">
	            <p class="sub-heading">Current Balance</p>
	            <hr style="height:3px;"/>
	            <p class="balance-text">$<%=bal %></p>
	        </div>
	    </div>
	</section>
	
	<!-- Including Footer -->
    <jsp:include page="../../Components/Footer/Footer.jsp" />
</body>
</html>
    