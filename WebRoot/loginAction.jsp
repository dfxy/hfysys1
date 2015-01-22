<%@ page import="ch2.service.UserService" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="utf-8"%>
<%@ page import="org.jfree.chart.ChartFactory,
                 org.jfree.chart.JFreeChart,
                 org.jfree.chart.plot.PlotOrientation,
                 org.jfree.chart.servlet.ServletUtilities,
                 org.jfree.data.category.DefaultCategoryDataset,
                 org.jfree.data.general.DatasetUtilities,
                 org.jfree.chart.plot.*,
                 org.jfree.chart.labels.*,
                 org.jfree.chart.renderer.category.BarRenderer3D,
                 java.awt.*,
                 org.jfree.ui.*,
                 org.jfree.chart.axis.AxisLocation,org.jfree.chart.title.TextTitle,org.jfree.chart.axis.CategoryAxis,
                 org.jfree.chart.axis.NumberAxis"%>
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户登录</title> 
  </head>  
  <body >
  <body style="background-color:green">
  <center>
  <%
  	String uid=request.getParameter("uid");
  	String password=request.getParameter("password");
  	UserService userService=new UserService();
  	if(userService.login(uid,password)){
	  	session.setAttribute("uid",uid);
  %>
  		<font color="blue">您好，您已登录成功！</font>
  		        		<br> <a href="#" onclick="javascript:window.location='userdataregister.jsp'">录入信息</a>
  		<html>
<body>

<%Class.forName("com.mysql.jdbc.Driver").newInstance();
String url ="jdbc:mysql://sqld.duapp.com:4050/NJjofXokEshYMwirHsrr?user=h5LGAflaMitGGnQFthp9BnpM&password=S9qVH8XRCtZ9jvaydlKsTbGVEiksE1HC&useUnicode=true&characterEncoding=gbk";

Connection conn= DriverManager.getConnection(url);
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
String sql="select uid,realName,gender,role,tel,loginNum,date from user where uid ='"+uid+"'";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next()) {%><table width="40%"  border="1" align="center" cellpadding="2" cellspacing="0" >
<caption>
<font color="black" style="font-size: 20px">账户信息</font><br></caption>
  <tr bgcolor="white">
    <td width="25%" align="left">昵称</td>
    <td width="30%" align="right" >
      <%out.print (rs.getString(1));%></td>
    
  </tr>
<tr bgcolor="white">
    <td width="25%" align="left">姓名</td>
<td width="30%" align="right" >
      <% out.print (rs.getString(2));%>
<tr bgcolor="white">
    <td width="25%" align="left">性别</td>
    <td width="30%" align="right" >
      <%if(rs.getInt(3)==1)
      out.print ("男");
      else
      out.print ("女");%></td>
    
  </tr>
<tr bgcolor="white">
    <td width="25%" align="left">职业</td>
    <td width="30%" align="right" >
      <% if(rs.getInt(4)==1)
      out.print ("医生");
      else
      out.print ("病人");%>
       </tr>
<tr bgcolor="white">
    <td width="25%" align="left">联系电话</td>
   <td width="30%" align="right" >
      <% out.print (rs.getString(5));%>
<tr bgcolor="white">
    <td width="25%" align="left">登陆次数</td>
    <td width="30%" align="right" >
      <%out.print (rs.getString(6));%></td>
    
  </tr>
<tr bgcolor="white">
    <td width="25%" align="left">登录时间</td>
  <td width="30%" align="right" >
      <% out.print (rs.getString(7));%>
    
</table><br>

<%}%>
<%rs.close();
stmt.close();
conn.close();
%>
<%
Connection honn= DriverManager.getConnection(url);
Statement htmt=honn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
String hql="select * from data where uid='"+uid+"'";
ResultSet hs=htmt.executeQuery(hql);
hs.last();   
int n=hs.getRow();   
hs.beforeFirst();
Connection lonn= DriverManager.getConnection(url);
Statement ltmt=lonn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
String lql="select leftluoshi,rightluoshi,leftjiaozheng,rightjiaozheng from data where myid ='"+n+"'and uid='"+uid+"'";
ResultSet ls=ltmt.executeQuery(lql);
while(ls.next()) {%><table width="40%"  border="1" align="center" cellpadding="2" cellspacing="0" >
  <tr bgcolor="white">
    <td width="25%" align="left">左眼裸视</td>
    <td width="30%" align="right" >
      <%out.print (ls.getString(1));%></td>
    
  </tr>
<tr bgcolor="white">
    <td width="25%" align="left">右眼裸视</td>
<td width="30%" align="right" >
      <% out.print (ls.getString(2));%>

<tr bgcolor="white">
    <td width="25%" align="left">左眼矫正</td>
   <td width="30%" align="right" >
      <% out.print (ls.getString(3));%>

<tr bgcolor="white">
    <td width="25%" align="left">右眼矫正</td>
  <td width="30%" align="right" >
      <% out.print (ls.getString(4));%>
    
</table><br>

<%}
%>
<%ls.close();
ltmt.close();
lonn.close();
hs.close();
htmt.close();
honn.close();
%>
</body>
</html>
  		  <a href="#" onclick="javascript:window.location='login.html'">退出</a>
 <%}else{%>
  		<font color="red">用户名或密码错误!</font>
  		 <a href="#" onclick="javascript:window.location='login.html'">返回</a>
  <%}%>
  </center>
  </body>
  </body>
</html>
