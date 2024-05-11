<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Manager Home</title>
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
    <section class="manager-view">
		  <div class="container">
		    <div class="container-item">
		        <%
    		sm = con.prepareStatement("select * from apply_loan where unid = ?");
	       String unid = session.getAttribute("unid").toString();
	       sm.setString(1,unid);
	       rs = sm.executeQuery();
    	%>  
		      <p class="sub-heading" style="margin-top: 5vw;margin-bottom: 1vh;text-decoration: underline;font-size: 30px;font-weight: bold;"> Loan Request
		      </p>
		      <table>
		      <thead>
		      <tr>
		      <th>Loan Type</th>
		      <th>A/C Number</th>
		      <th>Amount</th>
		      <th></th>
		      </tr>
		      </thead>
		      <tbody>
		     <%
		     while(rs.next()){
		     %>
		     <tr>
		     <form action="../../Logic/approve.jsp">
		     <input type="hidden"  name="acno" value='<%=rs.getInt("acno") %>'/>
		     <input type="hidden" name="amount" value='<%=rs.getDouble("amount") %>' />
		     <td><%=rs.getString("ltype") %></td>
		     <td><%=rs.getInt("acno") %></td>
		     <td><%=rs.getDouble("amount") %></td>
		     <td><button type="submit">&#10004;</button></td>
		     </form>
		     </tr>
		     <%} %>
		        </tbody>
		      </table>
		    </div>
		    <div class="container-item" style="padding-top:20vh";>
		      <form onsubmit = "return validateEnquiryForm()" name = "enquiryForm" method="post" action="ViewDetails.jsp" target="_blank">
		        <label>
		          <p class="sub-heading">Enter account number for enquiry</p>
		        </label><br />
		        <input type="text" name="ac-number" placeholder="Account Number" />
		
		        <button type="submit">View Details</button>
		      </form>
		    </div>
		  </div>
	</section>
	
	<!-- Including Footer -->
    <jsp:include page="../../Components/Footer/Footer.jsp" />
</body>
</html> 