<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My First SpringBoot Application</title>
</head>
<body>
	<div style="color: #ff0000">
		<h3>${errorMsg}</h3>
	</div>
	<form action="<c:url value="/login"/>" method="post">
		Username:<input type="text" name="username" />
		Password:<input type="password" name="password" />
		<input type="submit" value="확인" />
	</form>

</body>
</html>