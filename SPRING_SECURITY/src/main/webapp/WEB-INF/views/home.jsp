<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<h1>
	Hello <sec:authentication property="principal.username"></sec:authentication>!  
</h1>
<a class="btn btn-success" href="/springsecurity/admin">Admin</a> 
<%-- <sec:authorize ifAnyGranted="hasRole('ROLE_SUPERVISOR')">
<a class="btn btn-success" href="/springsecurity/admin">Admin</a>
</sec:authorize> --%>
<a class="btn btn-warning" href="j_spring_security_logout">Logout</a>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
