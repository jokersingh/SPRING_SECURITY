<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
	.errorblock{
		color: #ff0000;
		background-color: #ffEEEE;
		border: 3px solid #ff0000;
		padding: 8px;
		margin: 16px;
		
		
	}
</style>
</head>
<body>
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
	<div class="errorblock">
		Your login is unsuccessful !!<br>
		cause: ${SPRING_SECURITY_LAST_EXCEPTION.message}
	</div>
</c:if>
<form action="j_spring_security_check" method="post">
	<table>
		<tr>
			<th>User Name</th>
			<td><input name="j_username" id="j_username" type="text"/></td>
		</tr>
		<tr>
			<th>Password</th>
			<td><input name="j_password" id="j_password" type="password"/></td>
		</tr>
		<tr>
			<td><input type="submit" name="Submit" value="Submit"></td>
			<td><input type="reset" name="Reset" value="Reset"></td>
		</tr>
	</table>
</form>
</body>
</html>