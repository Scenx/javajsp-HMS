<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
  </head>

  <body>
  <form action="" name="form1" method="post">
  <div align="center">
  <jsp:include flush="true" page="/admin/top.jsp"/><br>
  <table  border="1" width="369">
  <%
  ArrayList al = (ArrayList)request.getAttribute("user");
  ArrayList user = (ArrayList)al.get(0);
   %>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">用 户 名：</font>
					</td>
					<td  height="25" >
					<%=user.get(1) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">真实姓名：</font>
					</td>
					<td  height="25" >
					<%=user.get(3) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">性&nbsp; &nbsp;&nbsp;别：</font>
					</td>
					<td  height="25" >
					<%=user.get(4) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">年&nbsp;&nbsp; &nbsp;龄：</font>
					</td>
					<td  height="25" >
					<%=user.get(5) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">身份证号：</font>
					</td>
					<td  height="25" >
					<%=user.get(6) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">家庭住址：</font>
					</td>
					<td  height="25" >
					<%=user.get(7) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">电话号码：</font>
					</td>
					<td  height="26" >
					<%=user.get(8) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">电子邮箱：</font>
					</td>
					<td  height="24" >
					<%=user.get(9) %></td>
				</tr>
				<tr>
					<td  height="30"  align="right" width="80">
						<font color="#996633">邮政编码：</font>
					</td>
					<td  height="25" >
					<%=user.get(10) %></td>
				</tr>
				</table>
  </div>
  </form>
  </body>
</html>