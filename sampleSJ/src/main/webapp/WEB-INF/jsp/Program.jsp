<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%@ page import ="model.User" %>
<%
User loginUser = (User) session.getAttribute("loginUser");
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>つぶやき</title>
</head>
<body>
<h1>メイン</h1>
<p>
<%= loginUser.getName() %>   がログイン中
<a href="/Java_JSP/Logout">ログアウト</a>
</p>
<p><a href="/Java_JSP/Main">更新</a></p>
<form action="/Java_JSP/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) {%>
<p><%= mutter.getUserName() %> : 
<%= mutter.getText() %></p>
<% } %>
</body>
</html>
