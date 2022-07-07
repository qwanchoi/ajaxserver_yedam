<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>el</h4>
<fmt:parseDate value="2020-07-07 10:25" pattern="yyyy-MM-dd hh:mm" var="dt" />
<fmt:formatDate value="${dt}" pattern="yyyy-MM-dd" /> <br>
<%-- <% String a = "10"; %> --%>
<c:set var="bananaVal" value="바나나" />
bananaVal's value : ${bananaVal } <br/>
<c:set var="arr" value="<%=Arrays.asList( bananaVal ,\"사과\") %>" />
arr's length : ${fn:length(arr) } <br>
arr with ${bananaVal}? : ${fn:contains(arr, bananaVal) }<br>
<ul>
	<li><%=request.getParameter("id") %></li>
	<li>${param.id }</li>
	<li><%=request.getHeader("user-agent") %></li>
	<li><%=request.getHeader("referer") %></li>
	<li>${header["user-agent"] }</li>
	<li>${header["referer"] }
	<li><%=request.getAttribute("userid") %></li>
	<li>${requestScope.userid}
	<li><%=session.getAttribute("userid") %></li>
	<li>${sessionScope.userid}
	<li><%=request.getRequestURI() %>
	<li>${pageContext.request.requestURI }</li>
	<li>${pageContext.request.getRequestURI() }</li>
</ul>

</body>
</html>