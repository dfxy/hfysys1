<%@ page contentType="text/html; charset=gbk" language="java"  errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ut-8">
<title>�û�ע��</title>
</head>
<body>
<form name="userRegisterForm" method="post" action="Register" onsubmit="return checkForm(this)">
<table width="80%"  border="0" align="center" cellpadding="2" cellspacing="0" >
<caption>
<font color="blue" style="font-size: 20px">�û�ע��</font><br></caption>
  <tr bgcolor="#EFEFEF">
    <td width="25%" align="right">�û���:</td>
    <td width="30%" valign="bottom">
      <input name="uid"type="text" id="uid" size="20" maxlength="50"></td>
    <td width="45%">*
        <input name="checkUser" type="button" value="�鿴�Ƿ�ռ��" onclick="checkUid();">
    </td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td colspan="3">(�û�����a��z��Ӣ����ĸ(�����ִ�Сд)��0��9�����֡��㡢���Ż��»�����ɣ�����Ϊ3��18���ַ���ֻ�������ֻ���ĸ��ͷ�ͽ�β,����:syjk3_001 )</td>
  </tr>
  <tr><td>�ܡ���:</td>
    <td><input name="password" type="password" id="password" size="20" maxlength="50"></td>
    <td>*(���볤��Ϊ6��16λ��������ĸ��Сд����¼�����������ĸ�����֡������ַ���ɡ�)</td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td height="40" valign="middle">����ȷ��:</td>
    <td><input name="confirmPassword" type="password" id="confirmPassword" size="20" maxlength="50"></td>
    <td>*(������һ�飬�Ա�ȷ�ϣ�) </td>
  </tr>
  <tr><td valign="middle">�����ʼ�:</td>
    <td><input name="email" type="text" size="20" maxlength="50"></td>
    <td>*(����������ȷ��E-mail��ַ��<FONT color=#cc0000>�������������ѯ</FONT>��)</td>
  </tr>
  <tr bgcolor="#EFEFEF"><td align="right">�ԡ���:</td>
    <td><p> <label><input type="radio" name="gender" value="1" checked>���</label>
        <label><input type="radio" name="gender" value="0">��Ů</label><br>
    </p></td>
    <td>&nbsp</td>
  </tr>
  <tr>
    <td align="right" valign="middle"><div align="right">������ʾ����:</div></td>
    <td ><input name="question" type="text" size="20" maxlength="50"></td>
    <td>*(�ʺ���֤�Լ����ڰ����һ����룡)</td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td valign="middle"><div align="right">��ʾ�����:</div></td>
    <td ><input name="answer" type="text"  size="20" maxlength="50"></td>
    <td bgcolor="#EFEFEF">*(�һ�����Ĵ𰸣�)</td>
  </tr>
  <tr>
    <td align="right">��ʵ����:</td>
    <td><input name="realName" type="text"id="realName" size="20" maxlength="50"></td>
    <td>&nbsp;</td>
  </tr>
  <tr bgcolor="#EFEFEF">
    <td align="right">��ϵ�绰:</td>
    <td><input name="tel" type="text" id="telphone" size="20" maxlength="50"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="center">
      <input type="submit" name="Submit" value="�ύ">
	</td>
  </tr>
</table>
</form>
</body>
</html>
<script language="javascript">
	function checkForm(form){
		if(isEmpty(form.uid.value) || isEmpty(form.password.value) || isEmpty(form.confirmPassword.value) || isEmpty(form.email.value) || isEmpty(form.question.value) || isEmpty(form.answer.value) ){
			alert("�뽫��������д����!");
			return false;
		}
		if(form.password.value!=form.confirmPassword.value){
			alert("�������벻ƥ��!");
			return false;
		}
		if(form.password.value.length<6 || form.password.value.length>16){
			alert("���볤�Ȳ�������6���ַ������ö���16���ַ���");
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
			window.open("checkUid.jsp?uid=" +name ,"����û���","toolbar=no, location=no,status=no,menubar=no, scrollbars=no,resizable=no,width=300,height=200");
		}
	}
</script>

