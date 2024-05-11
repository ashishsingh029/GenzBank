<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<section id="greeting-container">
	<% 
		session = request.getSession(false);
		if(session != null && (session.getAttribute("userName") != null || session.getAttribute("mUserName") != null)) { 
				if(session.getAttribute("userName") != null) { %>
					<p class="greet-msg">Welcome, <%=  session.getAttribute("userName") %>&nbsp; </p>
					<a href="<%= request.getContextPath() %>/Logic/cSignout.jsp" class="login-button" style="margin-left:auto;"> Log Out</a>
	<% 		} else if( session.getAttribute("mUserName") != null) { %>
					<p class="greet-msg">Hello <%=  session.getAttribute("mUserName") %> Sir </p>
					<a href="<%= request.getContextPath() %>/Logic/mSignout.jsp" class="login-button"  style="margin-left:auto;"> Log Out</a>
	<% 		}
		} else { %>
			<a href="<%= request.getContextPath() %>/Views/Customer/Signin.jsp" class="login-button" id="link-switch">Login/Register</a>
	<% } %>
</section>