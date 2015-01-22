<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="ch2.vo.User" %>
<%@ page import="ch2.service.UserService" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>写数据库</title>
</head>
<body  bgcolor="#DAF9FE">
<%
	String uid=request.getParameter("uid");
	String validateCode=request.getParameter("validateCode");
	UserService userService=new UserService();	
	if(userService.validateUser(uid,validateCode)){
%>
		<center><font color="Blue">您的帐号已经激活，现在可以登录了！</font><a href="login.jsp">登陆</a></center>
<%
	}else{
%>
		<a></a><center><font color="red">验证失败!</a></font></center>
<%	
	}
%>
</body>
</html>