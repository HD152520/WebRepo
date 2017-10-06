<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<%
UserVO user = (UserVO)session.getAttribute("user");


%>
<h1>
id : <%=user.getId() %><br>
name : <%=user.getName() %><br>
nickname : <%=user.getNickname() %></h1>
</body>
</html>