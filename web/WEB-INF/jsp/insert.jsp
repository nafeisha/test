<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
  <body>
    <form action="insert.do" method="post">
    	<table align="center" bgcolor="pink" border="1">
    		<tr align="center">
    			<td colspan="2">注册页面</td>
    		</tr>
    		<tr>
    			<td>姓名：</td>
    			<td><input type="text" id="name" name="name"></td>
    		</tr>
    		<tr>
    			<td>密码：</td>
    			<td><input type="text" id="pwd" name="pwd"></td>
    		</tr>
    		<tr>
    			<td>性别：</td>
    			<td><input type="text" id="sex" name="sex"></td>
    		</tr>
    		<tr>
    			<td>年龄：</td>
    			<td><input type="text" id="age" name="age"></td>
    		</tr>
    		<tr>
    			<td>电话：</td>
    			<td><input type="text" id="phone" name="phone"></td>
    		</tr>
    		<tr align="center">
    			<td colspan="2"><input type="submit" value="注册"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>







