<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
</head>
<body>
<body style="background-color:green">
<form name="userRegisterForm" method="post" action="Register" onsubmit="return checkForm(this)">
<table width="80%"  border="1" align="center" cellpadding="0" cellspacing="0" >
<caption>
<font color="black" style="font-size: 20px">用户注册</font><br></caption>
  <tr bgcolor="#EFEFEF">
    <td width="25%" align="left">登陆昵称:</td>
    <td width="30%" valign="bottom">
      <input name="uid"type="text" id="uid" size="20" maxlength="50"></td>
    <td width="45%">*
        <input name="checkUser" type="button" value="查看是否被占用" onclick="checkUid();">   
    </td>
  </tr>
    <tr bgcolor="#EFEFEF">
    <td width="25%" align="left">身份证:</td>
    <td width="30%" valign="bottom">
      <input name="myid"type="text" id="myid" size="20" maxlength="50"></td>
    <td width="45%">*
        <input name="checkUser" type="button" value="查看是否被使用" onclick="checkMyid();">   
    </td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td colspan="3"></td>
  </tr>
  <tr><td>密　码:</td>
    <td><input name="password" type="password" id="password" size="20" maxlength="50"></td>
    <td>*(长度为6～16位，区分大小写。密码可以由字母、数字、特殊字符组成。)</td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td height="40" valign="middle">密码确认:</td>
    <td><input name="confirmPassword" type="password" id="confirmPassword" size="20" maxlength="50"></td>
    <td>*(确认密码) </td>
  </tr>
  <tr><td valign="middle">联系电话:</td>
    <td><input name="tel" type="text" size="20" maxlength="50"></td>
    <td>*</td>
  </tr>
  <tr bgcolor="#EFEFEF"><td align="left">性　别:</td>
    <td><p> <label><input type="radio" name="gender" value="1" checked>男</label>
        <label><input type="radio" name="gender" value="0">女</label><br>
    </p></td>
    <td>&nbsp</td>
  </tr>
  <tr>
    <td align="right" valign="middle"><div align="left">身份:</div></td>
   <td><p> <label><input type="radio" name="role" value="1" checked>医生</label>
        <label><input type="radio" name="role" value="0">病人</label><br>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td valign="middle"><div align="left">家庭住址:</div></td>
    <td ><input name="answer" type="text"  size="20" maxlength="50"></td>
    <td bgcolor="#EFEFEF"></td>
  </tr>
  <tr>
    <td align="left">真实姓名:</td>
    <td><input name="realName" type="text"id="realName" size="20" maxlength="50"></td>
    <td>&nbsp;*</td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td align="left">电子邮箱:</td>
    <td><input name="email" type="text" id="email" size="20" maxlength="50"></td>
    <td>&nbsp;</td>
  </tr>
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
		if(isEmpty(form.uid.value)||isEmpty(form.myid.value) || isEmpty(form.password.value) || isEmpty(form.confirmPassword.value) || isEmpty(form.tel.value) || isEmpty(form.realName.value) ){
			alert("请将必填项填写完整!");
			return false;
		}
		if(form.password.value!=form.confirmPassword.value){
			alert("两次密码不匹配!");
			return false;
		}
		if(form.password.value.length<6 || form.password.value.length>16){
			alert("密码长度不得少于6个字符，不得多于16个字符！");
			return false;
		}
		return true;
	}
	function isEmpty(str){
		if(str==null || str.length==0)
			return true;
		else 
			return false;
	}
	function checkUid(){
		var name=document.userRegisterForm.uid.value;
		if(name.length>0){
			window.open("checkUid.jsp?uid=" +name+"" ,"检查用户名","toolbar=no, location=no,status=no,menubar=no, scrollbars=no,resizable=no,width=300,height=200");
		}
	}
	function checkMyid(){
		var name=document.userRegisterForm.myid.value;
		if(name.length>0){
			window.open("checkmyid.jsp?myid=" +name+"","检查身份证","toolbar=no, location=no,status=no,menubar=no, scrollbars=no,resizable=no,width=300,height=200");
		}
	}
</script>

