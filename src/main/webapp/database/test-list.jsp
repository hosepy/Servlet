<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hosepy.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test02</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		ResultSet resultSet = mysqlService.select("SELECT `name`, `url` FROM `book_mark`;");
	
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
		<% while(resultSet.next()){ %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><%= resultSet.getString("url") %></td>
			</tr>
		<% } %>
		</tbody>
	</table>
</body>
</html>