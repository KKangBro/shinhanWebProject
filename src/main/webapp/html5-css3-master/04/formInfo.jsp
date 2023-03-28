<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// jsp는 자바로 작성한 서버 프로그램이다.
// jsp = java + html
request.setCharacterEncoding("utf-8");
String username = request.getParameter("username");
String useremail = request.getParameter("useremail");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form연습하기</title>
</head>
<body>
	<h1>Form연습하기</h1>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=username %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=useremail %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=userid %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=userpwd %></td>
		</tr>
	</table>
</body>
</html>