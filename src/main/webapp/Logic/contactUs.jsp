<%@ include file = "DBConn.jsp" %>
<%
        // Your database insertion logic
        sm = con.prepareStatement("insert into contactUs values(?,?,?)");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String msg = request.getParameter("message");
        sm.setString(1, name);
        sm.setString(2,email);
        sm.setString(3,msg);
        sm.executeUpdate();
%>
<script>
	alert("Thanks for contacting Us");
	window.location.href = '<%= request.getContextPath()%>/Views/Customer/Contact.jsp';
</script>