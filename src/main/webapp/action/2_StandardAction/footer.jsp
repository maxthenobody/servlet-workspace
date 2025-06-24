<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.SimpleDateFormat, java.util.Date" %>

<footer>
	<%
		Date date = new Date();
		String year = new SimpleDateFormat("yyyy").format(date);
	%>
	
	Copyright &copy; 1998-<%=year %> KH Information에 저작권이 있음.<br>
	<br>	
	<%=request.getParameter("test") %><br>
	param: ${param}<br>
</footer>