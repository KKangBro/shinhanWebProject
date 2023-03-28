<%@page import="java.util.List"%>
<%@page import="aproject.vo.EmpVO"%>
<%@page import="aproject.model.EmpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
EmpService empService = new EmpService();
//EmpVO emp = empService.selectById(100);
List<EmpVO> empList = empService.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>직원 목록</title>
<style type="text/css">
	@font-face {
	    font-family: 'EF_watermelonSalad';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_watermelonSalad.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'ChosunCentennial';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-02@1.0/ChosunCentennial.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	
	* {
		font-family: 'ChosunCentennial';
		letter-spacing: 0.2em;
	}
	
	body {
		background-color: lightgray;
	}
	
	h1 {
		font-family: 'EF_watermelonSalad';
		text-align: center;
		margin: 30px auto 5px;
	}
	
	div {
		width: 90%;
		margin: 20px auto;
	}
	
	table {
		clear: both;
		background-color: #f0f0f0;
		
	}
	
	thead {
		background-color: lightblue;
		
	}
	
	thead > tr > th {
		padding: 8px;
	}
	
	tbody > tr:hover {
		background-color: lightgreen;
		
	}
	
	th {
		line-height: 1.5em;
	}
	
	.btn-outline-success {
		font-family: 'EF_watermelonSalad';
		float: right;
		margin-bottom: 10px;
	}

</style>

</head>
<body>
	<h1>직원 목록</h1>
	<div>
		<a href="emp_insert.html" type="button" class="btn btn-outline-success">신규 직원 등록</a>
		<table>
			<thead>
				<tr>
					<th>직원 번호</th>
					<th>이름</th>
					<th>성</th>
					<th>이메일</th>
					<th>전화번호</th>
					<th>입사일</th>
					<th>직책</th>
					<th>급여</th>
					<th>커미션</th>
					<th>매니저</th>
					<th>부서</th>
				</tr>
			</thead>
			<tbody>
				<%for(EmpVO emp : empList) { %>
				<tr>
					<th><%=emp.getEmployee_id() %></th>
					<th><%=emp.getFirst_name() %></th>
					<th><%=emp.getLast_name() %></th>
					<th><%=emp.getEmail() %></th>
					<th><%=emp.getPhone_number() %></th>
					<th><%=emp.getHire_date() %></th>
					<th><%=emp.getJob_id() %></th>
					<th><%=emp.getSalary() %></th>
					<th><%=emp.getCommission_pct() %></th>
					<th><%=emp.getManager_id() %></th>
					<th><%=emp.getDepartment_id() %></th>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	
</body>
</html>