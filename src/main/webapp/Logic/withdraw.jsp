<%@ include file = "DBConn.jsp" %>
<%
	int acno = Integer.parseInt(session.getAttribute("acno").toString());
	double amount = Double.parseDouble(request.getParameter("amount"));
	out.println(amount);
	sm = con.prepareStatement("select bal from user_bal where acno = ?");
	sm.setInt(1,acno);
	rs = sm.executeQuery();
	rs.next();
	if(rs.getDouble(1) < amount ) {
%>
		<script>
			alert("Can't Withdraw, Low Balance compared to Amount");
			window.location.href = "<%= request.getContextPath() %>/Views/Customer/Withdraw.jsp";
		</script>
<%	} else {
		sm = con.prepareStatement("update user_bal set bal = bal - ? where acno = ?");
		sm.setDouble(1,amount);
		sm.setInt(2,acno);
		sm.executeUpdate();
%>
		<script>
			alert("Amount Withdrawn Successfully..");
			window.location.href = "<%= request.getContextPath() %>/Views/Customer/Withdraw.jsp";
		</script>
<%	} %>
