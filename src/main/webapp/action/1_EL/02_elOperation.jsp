<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %> <!-- isELIgnored="true": EL안씀 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Operation</title>
</head>
<body>
	<h1>EL Operation(연산)</h1>
	<h3>1. 산술 연산</h3>
	<p>
		* 스크립틀릿 사용시<br>
		10 + 3 = <%=(int)request.getAttribute("big") + (int)request.getAttribute("small") %><br>
	</p>
	<p>
		* EL을 사용한 연산<br>
		10 + 3 = ${big+small}<br>
		${big} - ${small} = ${big - small}<br>
		${big} * ${small} = ${big * small}<br>
		${big} / ${small} = ${big / small}<br>
		${big} / ${small} = ${big div small}<br>
		${big} % ${small} = ${big % small}<br>
		${big} % ${small} = ${big mod small}<br>
	</p>
	
	<hr>
	<h3>2. 숫자간 대소 비교</h3>
	<p>
		10 &gt; 3: ${big > small}<br>
		10 &gt; 3: ${big gt small}<br>
		10 &lt; 3: ${big < small}<br>
		10 &lt; 3: ${big lt small}<br>
		10 &ge; 3: ${big >= small}<br>
		10 &ge; 3: ${big ge small}<br>
		10 &le; 3: ${big <= small}<br>
		10 &le; 3: ${big le small}<br>
	</p>
	
	<hr>
	<h3>3. 동등 비교 연산</h3>
	<p>
		<h4>* 스크립틀릿 방식</h4>
		sOne: ${sOne}<br>
		sTwo: ${sTwo}<br>
		<!-- sOne과 sTwo가 일치합니까?: ${sOne == sTwo}<br> -->
		sOne과 sTwo가 일치합니까?(equals): <%=request.getAttribute("sOne").equals(request.getAttribute("sTwo")) %><br>
		sOne과 sTwo가 일치합니까?(==): <%=request.getAttribute("sOne") == request.getAttribute("sTwo") %><br>
	</p>
	<p>
		<h4>* EL 연산</h4>
		big == small: ${big == small}<br>
		big eq small: ${big eq small}<br>
		<br>
		10 == big: ${10 == big}<br>
		10 eq big: ${10 eq big}<br>
		<br>
		sOne == sTwo: ${sOne == sTwo}<br>
		sOne eq sTwo: ${sOne eq sTwo}<br>
		<!-- EL 에서 == 비교는 자바의 equals() 방식으로 동작한다. -->
		<br>		
		sOne != sTwo: ${sOne != sTwo}<br>
		sOne ne sTwo: ${sOne ne sTwo}<br>
		<br>
		sOne == "안녕": ${sOne == "안녕"}<br>
		sOne eq "안녕": ${sOne eq "안녕"}<br>
	
	</p>
	
	<hr>
	<h3>4. 객체가 null인지, 또는 List가 비어있는지 체크할 수 있는 연산자</h3>
	<p>
		pOne: ${pOne}<br>
		pTwo: ${pTwo}<br>
		pTwo == null: ${pTwo == null}<br>
		empty pTwo: ${empty pTwo}<br>
		pOne eq null: ${pOne eq null}<br>
		empty pOne: ${empty pOne}<br>
		!empty pOne: ${!empty pOne}<br>
		!empty pTwo: ${!empty pTwo}<br>
		<br>
		lOne: ${lOne}<br>
		lTwo: ${lTwo}<br>
		empty lOne: ${empty lOne}<br>
		empty lTwo: ${empty lTwo}<br>
	</p>
	
	<hr>
	<h3>5. 논리연산자</h3>
	<p>
		<b>AND</b><br>
		true "&&" true: ${true && true}<br>
		true and true: ${true and true}<br>
		<br>
		<b>OR</b><br>
		false || true: ${false || true}<br>
		false or true: ${false or true}<br>
	</p>
	
	<script>
		const name = "은성";
		console.log("제 이름은 " + name + "입니다.");
		console.log(`제 이름은 \${name}입니다.`);
	</script>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>



























