<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��̨����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/css.css">
	

  </head>
  
  <body topmargin="0" leftmargin="0" rightmargin="0">
	<div align="center">
	<table style="border-style: dotted; border-width: 1px">
	<tr><td background="img/top.jpg" width="795" height="100"></td></tr>
  <tr>
  <td align="center" valign="top">
  <table width="100%">
  <tr><td align="center" bgcolor="green">
  <table>
  <tr>
  <td><a href="admin/booklist.jsp">�ͷ�����|</a></td>
  <td><a href="admin/typelist.jsp">�ͷ�������|</a></td>
  <td><a href="admin/userlist.jsp">��Ա����|</a></td>
  <td><a href="admin/order.jsp">������Ϣ��ѯ|</a></td>  
  <td><a href="admin/modifypwd.jsp">�û�����|</a></td>
  <td><a href="servlet/RemoveServlet?admin=1">ע���˳�|</a></td> 
  </tr>
  </table>
  </td></tr>
  </table>
  </td>
  </tr>
  </table>
  	</div>
  </body>
</html>