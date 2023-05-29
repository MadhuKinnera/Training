<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>

	<form action="s2">

		<h1>Courses</h1>
		<c:forEach items="${courses}" var="item">
			<input type="checkbox" name="course" value="${item}">
			<label for="html">${item }</label>
			<br>
		</c:forEach>


		<h1>Gender</h1>
		<c:forEach items="${gender}" var="item">
			<input type="radio" id="html" name="gender" value="${item}">
			<label for="html">${item }</label>
			<br>
		</c:forEach>

		<h1>State</h1>
		<select id="state" name="state">
			<c:forEach items="${states}" var="item">
				<option value="${item }">
					<c:out value="${item }"></c:out>
				</option>
				<br>
			</c:forEach>

		</select> <br> <br>
		<input type="submit" />


	</form>

</body>
</html>