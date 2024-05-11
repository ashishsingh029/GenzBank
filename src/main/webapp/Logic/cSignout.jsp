<%
	String root = request.getContextPath();
	session = request.getSession();
	if( session.getAttribute("userName") != null)
		session.setAttribute("userName",null);
	response.sendRedirect(root + "/index.jsp");
%>