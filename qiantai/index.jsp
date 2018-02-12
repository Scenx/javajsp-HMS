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
  <div align="center">
  <jsp:include flush="true" page="top.jsp"/>
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1">
	<tr><td height="10" colspan="2"></td></tr>
		<tr>
			<td rowspan="2" width="178" valign="top"><jsp:include flush="true" page="left1.jsp"/></td>
			<td>
			<div align="center">
				<table border="1" width="587" cellspacing="0" cellpadding="0"  height="150" id="table2">
					<tr>
						<td>
						<table border="0" width="100%" cellspacing="0" cellpadding="0" height="150" id="table3">
							
							<tr>
								<td width="324">
              					&nbsp;&nbsp;&nbsp;&nbsp;201525425赵凯旋

              					</td>
								<td width="42">　</td>
								<td align="center" border=1><jsp:include flush="true" page="login.jsp"/></td>
								<td width="16">　</td>
							</tr>
							
						</table>
						</td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
		<tr>
			<td align="center">
			<jsp:include flush="true" page="/servlet/ListServlet"/>
			<table border="0" width="93%" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td width="55" height="34" background="img/th_img2.gif">　</td>
					<td background="img/th_bg.gif"><b><font color="#ff9900">&nbsp;推荐客房</font></b></td>
				</tr>
				<tr>
					<td>　</td>
					<td>
					<%
				  ArrayList alNewly = (ArrayList)request.getAttribute("tuibook");
				  ArrayList newbook = (ArrayList)request.getAttribute("newbook");
                  ArrayList alType = (ArrayList)request.getAttribute("type");
                  int tem = 0;
				  int x = 0;
				  if(alNewly.size()%3 == 0){
				  	tem = alNewly.size()/3;
				  }else{
				  	tem = alNewly.size()/3+1;
				  }
				  for(int n = 1;n <= tem;n++){ 
					 %>
					<table cellspacing="0" cellpadding="3" width="590" border="0">
                      <tr>
                        <%
                for(int i = n*3-3;i < alNewly.size();i++){
                      ArrayList alNewlyRow = (ArrayList)alNewly.get(i);
                  %>
                        <td align="middle" width="590">
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td colspan="2" align="center" bgcolor="#FFE3BB"><font color="#ff9900">
                                <%
							   for(int j = 0;j < alType.size();j++){
								  ArrayList alTypeRow = (ArrayList)alType.get(j);
								  if(alTypeRow.get(0).equals(alNewlyRow.get(8))){%>
                                <a href="servlet/SearchServlet?types=<%=alTypeRow.get(0)%>"><%=alTypeRow.get(1)%></a>
                                <%break;}}%>
                                </font> </td>
                            </tr>
							<tr>
                              <td colspan="2" height="2">&nbsp;</td>
                            </tr>
                            <tr>
                              <td rowspan="4" align="center" valign="middle">   </td>
                              <td>
                                <%if(alNewlyRow.get(1).toString().length()>10){%>
                                <%=alNewlyRow.get(1).toString().substring(0,7)%>......
                                <%}else{%>
                                <%=alNewlyRow.get(1)%>
                                <%}%>
                                 </td>
                            </tr>
                            <tr>
                              <td>&nbsp;每日费用：<%=alNewlyRow.get(5)%>元</td>
                            </tr>
                            <tr>
                              <td>&nbsp;剩余数量：<%=alNewlyRow.get(6)%></td>
                            </tr>
                            <tr>
                              <td align="center">
                              <%
                              if(!alNewlyRow.get(6).equals("0")){ 
                              %>
                              <a href="qiantai/loan_book.jsp?bookId=<%=alNewlyRow.get(0)%>"> <img height="18" src="img/goumai.gif" width="40" border="0" alt=""/> </a>
                              <%}else{ %>

                              <%} %>
                               </td>
                            </tr>
                          </table><br></td>
                        <%
                        x++;
			 	if(x == 3){
			 	x = 0;
			 	break;
			 	}
                        }
                        %>
                      </tr>
                    </table>
                    <%} %>
					</td>
				</tr>
				<tr>
					<td width="55" height="34" background="img/th_img.gif">　</td>
					<td background="img/th_bg.gif">&nbsp;<b><font color="#66cc00">标准客房</font></b></td>
				</tr>
				<tr>
					<td>　</td>
					<td>
					<%
					 for(int n = 1;n <= tem;n++){ 
					 %>
					<table cellspacing="0" cellpadding="3" width="590" border="0">
                      <tr>
                        <%
                        x=0;
                for(int i = n*3-3;i < newbook.size();i++){
                      ArrayList alNewlyRow = (ArrayList)newbook.get(i);
                  %>
                        <td align="middle" width="590">
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td colspan="2" align="center" bgcolor="#ccffcc"><font color="#66cc00">
                                <%
							   for(int j = 0;j < alType.size();j++){
								  ArrayList alTypeRow = (ArrayList)alType.get(j);
								  if(alTypeRow.get(0).equals(alNewlyRow.get(8))){%>
                                <a href="servlet/SearchServlet?types=<%=alTypeRow.get(0)%>"><%=alTypeRow.get(1)%></a>
                                <%break;}}%>
                                </font> </td>
                            </tr>
							<tr>
                              <td colspan="2" height="2">&nbsp;</td>
                            </tr>
                            <tr>
                              <td rowspan="4" align="center" valign="middle"><a href="servlet/BookinfServlet?id=<%=alNewlyRow.get(0)%>"> <img src="<%=alNewlyRow.get(11)%>" border="0" alt="《<%=alNewlyRow.get(1)%>》" width="65" height="96"/> </a> </td>
                              <td><a href="servlet/BookinfServlet?id=<%=alNewlyRow.get(0)%>">
                                <%if(alNewlyRow.get(1).toString().length()>10){%>
                                <%=alNewlyRow.get(1).toString().substring(0,7)%>......
                                <%}else{%>
                                <%=alNewlyRow.get(1)%>
                                <%}%>
                                </a> </td>
                            </tr>
                            <tr>
                              <td>&nbsp;每日费用：<%=alNewlyRow.get(5)%>元</td>
                            </tr>
                            <tr>
                              <td>&nbsp;剩余数量：<%=alNewlyRow.get(6)%></td>
                            </tr>
                            <tr>
                              <td align="center">
                              <%
                              if(!alNewlyRow.get(6).equals("0")){ 
                              %>
                              <a href="qiantai/loan_book.jsp?bookId=<%=alNewlyRow.get(0)%>"> <img height="18" src="img/goumai.gif" width="40" border="0" alt=""/> </a>
                              <%}else{ %>
                              <a href="qiantai/beforehand_book.jsp?bookId=<%=alNewlyRow.get(0)%>"> <img height="18" src="img/goumai1.gif" width="40" border="0" alt=""/> </a>
                              <%} %>
                              </td>
                            </tr>
                          </table><br></td>
                        <%
                        x++;
			 	if(x == 3){
			 	x = 0;
			 	break;
			 	}
                        }
                        %>
                      </tr>
                    </table>
                    <%} %>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>
