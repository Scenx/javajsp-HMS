<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <script language="JavaScript">
		function login11()
			{
				
				if (document.form1.name.value == "" ) 
				{
					alert("请输入用户名!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.pwd.value == ""  )  
				{
					alert("请输入密码!");
					document.form1.pwd.focus();
					return false;
				}
			}
</script>
  <body bgcolor="gray">
  
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('用户名或密码错误!')</script><%
}
 %>
<form name="form1" action="servlet/AdminLoginServlet" method="post" align="center" onSubmit="return login11()">
<div align="center">
　<p>　</p>
<p>　</p>
<p>　</p>
<table border="1" width="400" style="background-color: #999966; top: 146px; height: 165px" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" class="h" align="center">系统后台登录</td>
</tr>
<tr>
<td width="17%" align="right">用户名：</td>
<td width="23%"> &nbsp; <input class="input7" type="text" name="name" size="18"/></td>
</tr>
<tr>
<td width="17%" align="right">密&nbsp;&nbsp;码：</td>
<td width="23%"> &nbsp; <input class="input7" type="password" name="pwd" size="20"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="登录"/></td>
</tr>
</table>
</div>
</form>
  </body>
</html>