<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- Including Greeting bar -->
<%@ include file="DBConn.jsp"  %>

<%
	sm = con.prepareStatement("insert into feedback values(?)");
	String feedback = request.getParameter("suggestion");
	sm.setString(1,feedback);
	sm.executeUpdate();
	out.print("<script> alert('Feedback sent Succesfully'); window.location.href = '../index.jsp'; </script>");
%>