<%
	String root = request.getContextPath();
	session = request.getSession();
	if( session.getAttribute("mUserName") != null)
		session.setAttribute("mUserName",null);
	response.sendRedirect(root + "/Views/Manager/abdc-wxer-polt-fgih-kjmq-zxnc-vuoy-drpl-wsak-bntu.jsp");
%>