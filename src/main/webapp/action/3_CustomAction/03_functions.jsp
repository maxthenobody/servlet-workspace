<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Functions</title>
</head>
<body>
	<h1>JSTL Function Library</h1>
	
	<c:set var="str" value="How are you?" />
	
	str: ${str}<br>
	문자열의 길이: ${fn:length(str)}<br>
	문자열의 길이: ${str.length()}<br>
	<br>
	모두 대문자로 출력: ${fn:toUpperCase(str)}<br>
	모두 대문자로 출력: ${str.toUpperCase()}<br>	
	모두 소문자로 출력: ${fn:toLowerCase(str)}<br>
	모두 대문자로 출력: ${str.toLowerCase()}<br>
	<br>
	are의 시작 인덱스: ${str.indexOf("are")}<br>
	are의 시작 인덱스: ${fn:indexOf(str, "are")}<br>
	<br>
	are을 were로 변환: ${fn:replace(str, "are", "were")}<br>
	are을 were로 변환: ${str.replace("are", "were")}<br>
	<br>
	str에 "are"이라는 문자열이 포함되어 있는지 검사: ${fn:contains(str, "are")}<br>
	str에 "are"이라는 문자열이 포함되어 있는지 검사: ${str.contains("are") }<br>
	<c:if test="${fn:contains(str, 'are')}">
		포함함
	</c:if>
</body>
</html>