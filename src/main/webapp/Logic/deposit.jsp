<%@ include file = "DBConn.jsp" %>
<%
	int acno = Integer.parseInt(session.getAttribute("acno").toString());
	double amount = Double.parseDouble(request.getParameter("amount"));
	sm = con.prepareStatement("update user_bal set bal = bal + ? where acno = ?");
	sm.setDouble(1,amount);
	sm.setInt(2,acno);
	sm.executeUpdate();
%>
<script>
	alert("Amount Deposited Successfully..");
	window.location.href = "<%= request.getContextPath() %>/Views/Customer/Deposit.jsp";
</script>