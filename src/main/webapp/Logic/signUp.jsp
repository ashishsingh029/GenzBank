<%@ include file = "DBConn.jsp" %>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	String gender = request.getParameter("gender");
	long phone = Long.parseLong(request.getParameter("phone"));
	int pin = Integer.parseInt(request.getParameter("pincode"));
	double openBal = Double.parseDouble(request.getParameter("openbal"));
	Statement sm1 = con.createStatement();
	rs = sm1.executeQuery("select * from acno_assigner");
	rs.next();
	int base = rs.getInt(1);
	int inc = rs.getInt(2);
	int randomAcno = base + inc + 1;
	
	sm = con.prepareStatement("update acno_assigner set inc = ?");
	sm.setInt(1,inc+1);
	sm.executeUpdate();
	
	sm = con.prepareStatement("insert into user_bal values(?,?,?)");
	sm.setInt(1,randomAcno);
	sm.setString(2,name);
	sm.setDouble(3,openBal);
	sm.executeUpdate();
	
	sm = con.prepareStatement("insert into user_cred values(?,?)");
	sm.setInt(1,randomAcno);
	sm.setString(2,pass);
	sm.executeUpdate();
	
	sm = con.prepareStatement("insert into cust_info values(?,?,?,?,?)");
	sm.setInt(1,randomAcno);
	sm.setString(2,email);
	sm.setString(3,gender);
	sm.setLong(4,phone);
	sm.setInt(5,pin);
	sm.executeUpdate();
	
	session = request.getSession(true);
	session.setAttribute("randomAcno", randomAcno);
	session.setAttribute("password",pass);
%>	
<script>
	alert("Account Created Sucessfully");
	window.location.href = "<%= request.getContextPath() %>/Views/Customer/RegSuccess.jsp";
</script>
