<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="ch2.service.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检查用户名</title>
</head>
<body topmargin="0" leftmargin="0">
<%
	String myid=request.getParameter("myid");
	UserService service=new UserService();
	boolean isExist=service.checkMyid(myid);
%>
<table width="300" height="200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr width="100%">
    <td width="100%" height="119" background="res/image5/t2.gif" ><div align="center"><font color="#FFFFFF"><strong><font size="4"> </font></strong>             
	<br>
	<%if(isExist){%>
		此身份证已经存在，请选用一个新身份证！
	<%}else{%>
		此身份证尚未被使用！
	<%}%>
    </font></div><br>
	<p align="center"> <a href="javascript:window.close()" >关 闭</a><br>
	  <br>
	</p>
	</td>
  </tr>
</table>
<p align="center">&nbsp;</p>
</body>
</html>