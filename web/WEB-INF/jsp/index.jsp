<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="findByUser.do" method="post">
    	<center>
	    	姓名:<input type="text" name="name">
	    	性别:<input type="text" name="sex">
	    	年龄:<input type="text" name="age">
	    	电话:<input type="text" name="phone">
    	<input type="submit" value="查询">
    	</center>
    	<input type="hidden" name="hidden" value="findByUser">
    </form>
    <table align="center" border="1" width="50%" bgcolor="yellow">
		<thead>
			<tr>
				<th>序号</th>
				<th>姓名</th>
				<th>密码</th>
				<th>性别</th>
				<th>年龄</th>
				<th>电话</th>
				<th>修改</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${requestScope.list}">
				<tr>
					<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.pwd}</td>
					<td>${user.sex}</td>
					<td>${user.age}</td>
					<td>${user.phone}</td>
					<td><a href="findById.do?id=${user.id}">修改</a></td>
					<td><a href="delete.do?id=${user.id}" onclick="return confirm('确认删除数据吗')">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>    
    </table>
  </body>
</html>