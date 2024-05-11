<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Balance Enquiry</title>
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
    	
    	<%@ include file = "../../Logic/DBConn.jsp" %>
    	<% if(isLoggedIn) { %>
    	<% 
    		sm = con.prepareStatement("select bal from user_bal where acno = ?");
    		session = request.getSession();
    		int acno = -1;
    		if(session.getAttribute("acno") != null)
    			 acno = Integer.parseInt(session.getAttribute("acno").toString());
    		sm.setInt(1,acno);
    		rs = sm.executeQuery();
    		rs.next();
    		double bal = rs.getDouble("bal");
    	%>
    	<section id="bal-enquiry">
	        <div class="container">
	            <div class="container-item">
	                <p class="sub-heading">Balance Enquiry</p>
	                <p class="balance-text"> $<%= bal %> </p>
	                <hr />
	                <p class="sub-heading">Account Number : <%= acno %></p>
	            </div>
	            <div class="container-item">
	                <p class="sub-heading" style="text-decoration: underline; text-decoration-style: dotted;">
	                    Account Details:
	                </p>
		<%
    		sm = con.prepareStatement("select * from cust_info where acno = ?");
    		sm.setInt(1,acno);
    		rs = sm.executeQuery();
    		rs.next();
    		String name = session.getAttribute("userName").toString();
    		String email = rs.getString("email");
    		String gender = (rs.getString("gender").equals("M"))?"Male":"Female";
    		long phone = rs.getLong("phone");
    		long pin = rs.getInt("pin");
    	%>    
	                <table>
	                    <tbody>
	                        <tr>
	                            <td>
	                                <strong>Name: </strong> <%= name %> 
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
	                <p style="text-align: center;display:none; margin-top: 3vh">
	                    <a href="../ViewAll.jsp" class="view-all-button">View All</a>
	                </p>
	            </div>
	        </div>
	    </section>
	     <% } %>
	    <!-- Including Footer -->
    	<jsp:include page="../../Components/Footer/Footer.jsp" />
    </body>
</html>
