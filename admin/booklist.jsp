<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/css.css">
	

  </head>
<%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('���ӳɹ�!')</script><%
}
 %>
  <jsp:include flush="true" page="/servlet/SessAdminServlet"/>
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
  	<table border="1" width="800" id="table1">
		<tr bgcolor="gray">
			<td align="center">�ͷ�����</td>
			<td align="center">���</td>
			<td align="center">�Ƽ�ָ��</td>
			<td align="center">ÿ�����(Ԫ)</td>
			<td align="center">��</td>
			<td align="center">��</td>
		</tr>
		<%
		ArrayList books = (ArrayList)request.getAttribute("books");
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
		 %>
		<tr>
			<td  align="center" height="20"><a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>&adminshow=1"><%=alRow.get(1) %></a></td>
			<td  align="center" height="20"><%=alRow.get(2) %></td>
			<td  align="center" height="20"><%=alRow.get(3) %></td>
			<td  align="center" height="20"><%=alRow.get(5) %></td>
			<td  align="center" height="20"><a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>&adminupdate=1">�޸�</a></td>
			<td  align="center" height="20"><a href="servlet/DelServlet?id=<%=alRow.get(0) %>">ɾ��</a></td>
		</tr>
		<%} %>
		<tr>
			<td  align="center" colspan="6" height="25"><a href="admin/addbook.jsp">���ӿͷ�</a></td>
		</tr>
	</table>
  	</div>
  </body>
</html>