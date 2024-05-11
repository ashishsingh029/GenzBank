<%@ include file = "../../Logic/DBConn.jsp"  %>
<%
	int acno = Integer.parseInt(request.getParameter("acno").toString());
	double bal = Double.parseDouble(request.getParameter("amount").toString());
	sm = con.prepareStatement("update user_bal set bal = bal + ? where acno = ?");
	sm.setDouble(1,bal);
	sm.setInt(2,acno);
	sm.executeUpdate();

	sm = con.prepareStatement("delete from apply_loan where acno = ?");
	sm.setInt(1,acno);
	sm.executeUpdate();
%>
<script>
	alert("Approved Successfully..");
	window.location.href = "<%= request.getContextPath() %>/Views/Manager/Mindex.jsp";
</script>