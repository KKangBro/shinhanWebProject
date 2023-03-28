<%@page import="aproject.model.EmpService"%>
<%@page import="com.shinhan.dbutil.DateUtil"%>
<%@page import="aproject.vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String employee_id = request.getParameter("employee_id");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email = request.getParameter("email");
String phone_number = request.getParameter("phone_number");
String hire_date = request.getParameter("hire_date");
String job_id = request.getParameter("job_id");
String salary = request.getParameter("salary");
String commission_pct = request.getParameter("commission_pct");
String manager_id = request.getParameter("manager_id");
String department_id = request.getParameter("department_id");

EmpVO emp = new EmpVO();
emp.setEmployee_id(Integer.parseInt(employee_id));
emp.setFirst_name(first_name);
emp.setLast_name(last_name);
emp.setEmail(email);
emp.setPhone_number(phone_number);
emp.setHire_date(DateUtil.convertToDate(hire_date));
emp.setJob_id(job_id);
emp.setSalary(Double.parseDouble(salary));
emp.setCommission_pct(Double.parseDouble(commission_pct));
emp.setManager_id(Integer.parseInt(manager_id));
emp.setDepartment_id(Integer.parseInt(department_id));
System.out.println(emp);

EmpService service = new EmpService();
service.empInsert(emp);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 등록</title>
<style type="text/css">
p {
	background-color: lightblue;
	border: 1px solid green;
	padding: 3px
}
</style>
</head>
<body>
	<h1>신규 직원을 DB에 저장합니다.</h1>
	<p><%=emp %></p>
	<p>employee_id: <%=employee_id %></p>
	<p>first_name: <%=first_name %></p>
	<p>last_name: <%=last_name %></p>
	<p>email: <%=email %></p>
	<p>phone_number: <%=phone_number %></p>
	<p>hire_date: <%=hire_date %></p>
	<p>job_id: <%=job_id %></p>
	<p>salary: <%=salary %></p>
	<p>commission_pct: <%=commission_pct %></p>
	<p>manager_id: <%=manager_id %></p>
	<p>department_id: <%=department_id %></p>
	
</body>
</html>