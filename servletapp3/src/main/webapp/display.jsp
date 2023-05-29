<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
</head>
<body>

	<h2>You Choosed These Options...</h2>
	<h1>
		State :
		<c:out value="${state }"></c:out>
	</h1>
	<h1>
		Gender :
		<c:out value="${gender }"></c:out>
	</h1>
	<h1>
		Courses :
		<c:forEach items="${courses}" var="course">
			<c:out value="${course}"></c:out>
		</c:forEach>
	</h1>


</body>
</html>