<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�Ƶ�ͷ�����Ԥ��</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/css.css" type="text/css" rel="stylesheet"/>
	
  </head>
  
  <body topmargin="0" leftmargin="0" rightmargin="0">
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1" height="29">
		<tr>
			<td>
			<img width="800" height=200 src=<%=basePath %>img/top.jpg>
			</td>
		</tr>
	</table>
</div>
  <div align="center">
	
				<table bgcolor=yellow border="0" width="800" id="table2" cellpadding="0" height="30" cellspacing="0">
					<tr>
						<td align="center"><a href="qiantai/index.jsp">[ ��ҳ ]</a></td>
						<td align="center"><a href="qiantai/reg.jsp">[ �û�ע�� ]</a></td>
						<td align="center"><a href="#">[ �û����� ]</a></td>
						<td align="center"><a href="qiantai/search.jsp">[ �ͷ����� ]</a></td>
						<td align="center"><a href="qiantai/loan_book_note.jsp">[ Ԥ����¼ ]</a></td>
						<td align="center"><a href="qiantai/leave_word.jsp">[ �������� ]</a></td>
						<td align="center"><a href="servlet/RemoveServlet?login=1">[ ע���˳� ]</a></td>
					</tr>
				</table>
			
</div>
  </body>
</html>