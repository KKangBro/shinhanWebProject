<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String job_id = request.getParameter("job_id");
String job_title = request.getParameter("job_title");
String max_salary = request.getParameter("max_salary");
String min_salary = request.getParameter("min_salary");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Job 등록</h1>
	<p>job id는 <%=job_id %></p>
	<p>job title는 <%=job_title %></p>
	<p>max salary는 <%=max_salary %></p>
	<p>min salary는 <%=min_salary %></p>
</body>
</html>