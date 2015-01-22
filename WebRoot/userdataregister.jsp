<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户数据录入</title>
</head>
<body>
<body style="background-color:green">
<form name="userdataregisterForm" method="post" action="Dataregister" onsubmit="return checkForm(this)">
<table width="80%"  border="1" align="center" cellpadding="0" cellspacing="0" >
<caption>
<font color="black" style="font-size: 20px">用户数据录入</font><br></caption>
  <tr bgcolor="#EFEFEF">
    <td width="25%" align="left">姓名:</td>
    <td width="30%" valign="bottom">
      <input name="uid"type="text" id="uid" size="20" maxlength="50"></td>
  </tr>
    <tr bgcolor="#EFEFEF">
    <td width="25%" align="left">疗程数:</td>
    <td width="30%" valign="bottom">
      <input name="myid"type="text" id="myid" size="20" maxlength="50"></td>
    <td width="45%">   
    </td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td colspan="3"></td>
  </tr>
  <tr><td valign="middle">左眼裸视:</td>
    <td><input name="leftluoshi" type="text" id="leftluoshi"  size="20" maxlength="50"></td>
 <tr><td valign="middle">右眼裸视:</td>
    <td><input name="rightluoshi" type="text" id="rightluoshi"size="20" maxlength="50"></td>
  </tr>
  <tr><td valign="middle">左眼矫正:</td>
    <td><input name="leftjiaozheng" type="text" id="leftjiaozheng"size="20" maxlength="50"></td>
 <tr><td valign="middle">右眼矫正:</td>
    <td><input name="rightjiaozheng" type="text" id="rightjiaozheng"size="20" maxlength="50"></td>
  <tr>
    <td colspan="3" align="center">
    <input type="button" name="back" value="返回" onclick="history.back();">
      <input type="submit" name="Submit" value="提交">
	</td>
  </tr>
</table>
</form>
</body>
</body>
</html>
<script language="javascript">
	function checkForm(form){
		if(isEmpty(form.uid.value)||isEmpty(form.myid.value) || isEmpty(form.leftluoshi.value) || isEmpty(form.rightluoshi.value) || isEmpty(form.leftjiaozheng.value) || isEmpty(form.rightjiaozheng.value) ){
			alert("请将必填项填写完整!");
			return false;
			}
		else 
			return true;
		}
	
	function isEmpty(str){
		if(str==null || str.length==0)
			return true;
		else 
			return false;
	}
</script>

