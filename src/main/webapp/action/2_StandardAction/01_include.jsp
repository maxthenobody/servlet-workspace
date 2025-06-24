<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include</title>
</head>
<body>
	<h3>include</h3>
	<p>
		현재 페이지에 또 다른 jsp를 포함(include) 하고자 할 때 사용하는 태그
	</p>
	
	<h4>1. include 포함방식(정적 include 방식)</h4>
	
	<%-- <%@ include file="footer.jsp" %> --%>
	
	<br><br>
	특징: include 하고 있는 페이지상에 선언 되어있는 변수를 현재 페이지에서도 사용 가능.<br>
	<%-- year: <%=year %> --%>
	
	<hr>
	<h4>2. JSP 표준 액션 태그 include를 이용한 방식(동적 include 방식)</h4>
	<jsp:include page="footer.jsp"/>
	
	<br><br>
	특징1: include 하고 있는 페이지에 선언한 변수들을 공유하지 않는다.<br>
	<% int year = 2002; %>
	
	특징2: include 시 include 되는 jsp 로 파라미터를 전달할 수 있다.
	<jsp:include page="footer.jsp">
		<jsp:param value="hello" name="test"/>
	</jsp:include>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>


























