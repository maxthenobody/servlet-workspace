<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Format</title>
</head>
<body>
	<h1>1. formatNumber</h1>
	<pre>
숫자 데이터의 포맷 지정
- 표현하고자 하는 숫자 데이터의 형식을 원하는 쓰임에 맞게 지정하는 태그.

<b>&lt;fmt:formatNumber value="출력할 값" groupingUsed="true/false" type="percent/currency" currencySymbol="심볼"&gt;</b>
	</pre>
	<c:set var="num1" value="123456789" />
	<c:set var="num2" value="0.75" />
	<c:set var="num3" value="50000" />
	
	<b>단순 출력: ${num1}</b><br>
	세자리단위로 구분하여 출력: <fmt:formatNumber value="${num1}" /><br>
	숫자 그대로 출력: <fmt:formatNumber value="${num1}" groupingUsed='false' /><br>
	<br>
	<b>단순 출력: ${num2}</b><br>
	percent: <fmt:formatNumber value="${num2}" type="percent" /><br>
	<br>	
	<b>단순 출력: ${num3}</b><br>
	currency: <fmt:formatNumber value="${num3}" type="currency" currencySymbol="₩" /><br>
	
	<h3>2. formatDate</h3>
	<pre>
java.util.Date 객체의 출력형식을 지정하는 태그.
	</pre>
	<c:set var="current" value="<%= new java.util.Date() %>"/>
	current: ${current}<br>
	
	<ul>
		<li>
			현재 날짜: <fmt:formatDate value="${current}" type="date" />
		</li>
		<li>
			현재 시간: <fmt:formatDate value="${current}" type="time" />
		</li>
		<li>
			현재 날짜 및 시간: <fmt:formatDate value="${current}" type="both" />
		</li>
		<li>
			커스터마이징: <fmt:formatDate value="${current}" pattern="yyyy-MM-dd" />
		</li>
	</ul>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>






















