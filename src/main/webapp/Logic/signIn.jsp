<%@ include file = "DBConn.jsp" %>
<%
	int acno = Integer.parseInt(request.getParameter("accountNo"));
	String pass = request.getParameter("pass");
	sm = con.prepareStatement("select t1.acno,t1.password,t2.uname from user_cred t1, user_bal t2 where t1.acno = t2.acno and t1.acno = ? and t1.password = ? ");
	sm.setInt(1,acno);
	sm.setString(2,pass);
	rs = sm.executeQuery();
	if(rs.next()) {
		session = request.getSession();
		session.setAttribute("userName",rs.getString(3));		
		session.setAttribute("acno",rs.getInt(1));
%>
		<script>
			alert("Login Successful");
			window.location.href = "<%= request.getContextPath() %>/index.jsp";
		</script>
<%	} else { %>	
	<script>
		alert("Invalid Credentials");
		window.location.href = "<%= request.getContextPath() %>/Views/Customer/Signin.jsp";
	</script>
 <% } %>