
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.nichao.User" %>
<%@ page import="org.nichao.Counts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'online.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
 	 User user=null;
 	 //判断会话是否存在
	if(session.getAttribute("user")==null){
		response.sendRedirect("login.jsp");
	}else{
 	user=(User)session.getAttribute("user");
  %>
  欢迎您：<%=user.getUserName() %><br/>
  目前在线人数：<%=Counts.count %><br/>
  <a href="../myclose">离开</a>
  <%
  	}
   %>
  </body>
</html>
