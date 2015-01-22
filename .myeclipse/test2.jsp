<%@ page contentType="text/html;charset=utf-8"%>
<%	String str=request.getParameter("chStr");
	if(str==null) str="没有输入值"; %>
<HTML>
	<HEAD>
		<TITLE>中文Test</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<META http-equiv=pragma content=no-cache>
	</HEAD>
	<BODY>你提交的参数值为:<%=str%><br>
		<form action="test.jsp" method="post">
		<a href="test2.jsp?chStr=中文">点击这里提交URL中文参数</a> 
		</form>
	</BODY>
</HTML>
