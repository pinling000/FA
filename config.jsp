<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>create table</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="USE `fashion`";
con.createStatement().execute(sql);
%>
</body>
</html>