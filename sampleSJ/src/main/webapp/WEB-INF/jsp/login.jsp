<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.UserBeans" %>
<%
UserBeans login = (UserBeans) session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todoアプリ</title>
</head>
<body>
<h1>Login</h1>
<% if(login != null) { %>
<p>ログインに成功しました！</p>
<p>ようこそ<%= loginr.getName() %>さん</p>
<a href="/sampleSJ/MainServlet">Todo一覧へ</a>
<% } else { %>
<p>ログインに失敗しました</p>
<a href="/sampleSJ/">TOPへ</a>
<% } %>
</body>
</html>