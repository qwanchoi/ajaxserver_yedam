<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jobs</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
</head>
<script>
	$(function(){
			$("#accd").accordion({
				collapsible: true,
				active: 0,
				heightStyle:"content"
			});
	});
</script>
<body>
<div id="accd">
<c:forEach items="${jobs }" var="job">
	<h3> ${job.job_title}</h3>
	<div>
		<c:forEach items="${job.employees }" var="emp">
			<div> ${emp.employee_id} : ${emp.first_name} </div>
		</c:forEach>
	</div>
</c:forEach>
</div>
</body>
</html>