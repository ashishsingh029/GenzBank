<%@ include file = "DBConn.jsp" %>
<%@ page import = "java.util.ArrayList" %>
<%
	int acno = Integer.parseInt(session.getAttribute("acno").toString());
	double amount = Double.parseDouble(request.getParameter("amount"));
	String ltype = request.getParameter("ltype");
	sm = con.prepareStatement("select unid from manager_cred");
	ArrayList<String> list = new ArrayList<>();
	rs = sm.executeQuery();
	while(rs.next()) {
		list.add(rs.getString(1));
	}
	for(String uid : list) {
		sm = con.prepareStatement("insert into apply_loan values(?,?,?,?)");
		sm.setString(1,uid);
		sm.setInt(2,acno);
		sm.setDouble(3,amount);
		sm.setString(4,ltype);
		sm.executeUpdate();
	}
%>
<script>
	alert("Loan Applied..");
	window.location.href = "<%= request.getContextPath() %>/Views/Customer/ApplyLoan.jsp";
</script>