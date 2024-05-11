<%@ include file = "DBConn.jsp" %>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	String gender = request.getParameter("gender");
	long phone = Long.parseLong(request.getParameter("phone"));
	int pin = Integer.parseInt(request.getParameter("pincode"));
	session = request.getSession();
	int acno = Integer.parseInt(session.getAttribute("acno").toString());
	
	sm = con.prepareStatement("update user_cred set password = ? where acno = ?");
	sm.setString(1,pass);
	sm.setInt(2,acno);
	sm.executeUpdate();
	
	sm = con.prepareStatement("update user_bal set uname = ? where acno = ?");
	sm.setString(1,name);
	session.setAttribute("userName",name);
	sm.setInt(2,acno);
	sm.executeUpdate();
	
	sm = con.prepareStatement("update cust_info set email = ?, gender = ?,phone = ?,pin = ? where acno = ?");
	sm.setString(1,email);
	sm.setString(2,gender);
	sm.setLong(3,phone);
	sm.setInt(4,pin);
	sm.setInt(5,acno);
	sm.executeUpdate();
%>	
<script>
	alert("Details Updated Sucessfully");
	window.location.href = "<%= request.getContextPath() %>/Views/Customer/UpdateDetails.jsp";
</script>
