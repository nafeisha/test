<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert.jsp' starting page</title>
    
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
    <form action="update.do" method="post">
    	<table border="1" bgcolor="green" align="center">
    		<tr align="center">
    			<td colspan="2">修改用户信息</td>
    		</tr>
    		<tr>
    			<td>序号：</td>
    			<td><input type="text" name="id" readonly="readonly" value="${user.id }"></td>
    		</tr>
    		<tr>
    			<td>姓名：</td>
    			<td><input type="text" name="name" value="${user.name }"></td>
    		</tr>
    		<tr>
    			<td>密码：</td>
    			<td><input type="text" name="pwd" value="${user.pwd }"></td>
    		</tr>
    		<tr>
    			<td>性别：</td>
    			<td><input type="text" name="sex" value="${user.sex }"></td>
    		</tr>
    		<tr>
    			<td>年龄：</td>
    			<td><input type="text" name="age" value="${user.age }"></td>
    		</tr>
    		<tr>
    			<td>电话：</td>
    			<td><input type="text" name="phone" value="${user.phone }"></td>
    		</tr>
    		<tr align="center">
    			<td colspan="2"><input type="submit" value="修改"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
