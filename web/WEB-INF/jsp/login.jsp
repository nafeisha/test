<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
  	<form action="login.do" method="post">
    	<table align="center" bgcolor="#A53535" border="1">
    		<tr align="center">
    			<td colspan="2">欢迎登录</td>
    		</tr>
    		<tr>
    			<td>姓名</td>
    			<td><input type="text" id="name" name="name"></td>
    		</tr>
    		<tr>
    			<td>密码</td>
    			<td><input type="text" id="pwd" name="pwd"></td>
    		</tr>
    		<tr align="center">
    			<td colspan="2">
    				<input type="submit" value="登录">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>




