<%@ page contentType="text/html;charset=utf-8" %>
<html>
  <head>
 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户登录</title> 
    <meta http-equiv="expires" content="0">
    <style type="text/css">
<!--
.style1 {color: #0000CC;font-size: 16px;font-weight: bold;}
-->
    </style>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
  </head>  
  <body>
  	<form name="loginForm" method="post" action="loginAction.jsp">
    <table width="30%"  border="2" align="center" cellpadding="0" cellspacing="0" bordercolor="blue">
      <caption>
      <span class="style1">医疗系统登录      </span><br>
      </caption>
      <tr align="left">
        <th width="40%" height="35" align="center" scope="row">用户名:</th>
        <td width="60%"><input name="uid" type="text" id="uid" maxlength="20"></td>
      </tr>
      <tr align="left">
        <th height="35" align="center" scope="row">密&nbsp;&nbsp;码:</th>
        <td><input name="password" type="password" id="password" maxlength="30"></td>
      </tr>
      <tr align="center">
        <th height="35" colspan="2" scope="row"><input type="submit" name="Submit" value="登录">
        <input type="button" name="Submit2" value="注册" onclick="javascript:window.location='userRegister.jsp'"> </th>
      </tr>
    </table>
    </form>
  </body>
</html>
