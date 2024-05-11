<%@ include file = "DBConn.jsp" %>
<%
	String unid = request.getParameter("unid");
	String pass = request.getParameter("pass");
	sm = con.prepareStatement("select * from manager_cred where unid=? and pass=? ");
	sm.setString(1,unid);
	sm.setString(2,pass);
	rs = sm.executeQuery();
	if(rs.next()) {
		session = request.getSession();
		session.setAttribute("unid",unid);
		session.setAttribute("mUserName",rs.getString(3));		
%>
		<script>
			alert("Login Successful");
			window.location.href = "<%= request.getContextPath() %>/Views/Manager/Mindex.jsp";
		</script>
<%	} else { %>	
	<script>
		alert("Invalid Credentials");
		window.location.href = "<%= request.getContextPath() %>/Views/Manager/abdc-wxer-polt-fgih-kjmq-zxnc-vuoy-drpl-wsak-bntu.jsp";
	</script>
 <% } %>