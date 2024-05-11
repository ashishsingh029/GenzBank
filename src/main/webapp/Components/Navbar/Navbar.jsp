<header class="topnav">
    <img
        src="<%=request.getContextPath() %>/Resources/Navbar/logo.png"
        width="50"
        height="50"
        alt="GenzBank Icon"
        onclick="window.location.href = '<%=request.getContextPath() %>/index.jsp'"
        style="cursor: pointer"
    />
    <span
        class="bank-name"
        onclick="window.location.href = '<%=request.getContextPath() %>/index.jsp'"
        style="cursor: pointer"
    >
        GenzBank
    </span>
    <ul>
        <li><a href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
        <li><a href="<%= request.getContextPath() %>/Views/Customer/Services.jsp">Services</a></li>
        <li><a href="<%= request.getContextPath() %>/Views/Customer/Contact.jsp">Contact</a></li>
    </ul>
</header>