<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.UserBeans" %>
<%
UserBeans user = (UserBeans) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todoアプリ</title>
</head>
<body>
<h1>Login</h1>
<% if(user != null) { %>
<p>ログインに成功しました！</p>
<p>ようこそ<%= user.getName() %>さん、こんにちは！</p>
<a href="/sampleSJ/MainServlet">タスク一覧へ</a>
<% } else { %>
<p>ログインに失敗しました</p>
<a href="/sampleSJ/">トップへ</a>
<% } %>
</body>
</html>