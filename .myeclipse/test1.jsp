<%@ page contentType="text/html;charset=utf-8"%>
<%	String str=request.getParameter("chStr");
	if(str==null) str="没有输入值"; %>
<HTML>
	<HEAD>
		<TITLE>中文Test</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<META http-equiv=pragma content=no-cache>
	</HEAD>
	<BODY>你输入的内容为:<%=str%><br>
		<form action="test1.jsp" method="post">
		请输入中文:<input type="text" name="chStr"><input type="submit" value="确定"> 
		</form>
	</BODY>
</HTML>
