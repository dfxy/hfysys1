<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="ch2.vo.data" %>
<%@ page import="ch2.service.UserService" %>
<%@ page import="ch2.util.Generator" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>写数据库</title>
</head>
<body  bgcolor="#DAF9FE">
<%
	String uid=request.getParameter("uid");
	String myid=request.getParameter("myid");
    String leftluoshi=request.getParameter("leftluoshi");
    String rightluoshi=request.getParameter("rightluoshi");
	String leftjiaozheng=request.getParameter("leftjiaozheng");
    String rightjiaozheng=request.getParameter("rightjiaozheng");
	UserService service=new UserService();
	data data=new data();
	data.setUid(uid);
	data.setMyid(myid);
	data.setleftluoshi(leftluoshi);
	data.setrightluoshi(rightluoshi);
	data.setleftjiaozheng(leftjiaozheng);
	data.setrightjiaozheng(rightjiaozheng);
	service.adddata(data);
%>
</body>
</html>