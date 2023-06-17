<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.UserBeans,model.TodoBeans,java.util.List" %>
<%@ page import ="model.UserBeans" %>
<%
UserBeans user = (UserBeans) session.getAttribute("user");
List<TodoBeans> todoList = (List<TodoBeans>) application.getAttribute("todoList");
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todoアプリ</title>
</head>
<body>
<h1>タスク一覧</h1>
<p>
<%= user.getName() %>さんのタスク
<a href="/sampleSJ/Logout">ログアウト</a>
</p>
<form action="/sampleSJ/MainServlet" method="post">
<input type="text" name="text" placeholder="タスクを入力してください">
<input type="submit" value="登録">
</form>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<% if(todoList == null) { %>
<p>まだタスクが登録されていません</p>
<% } %>
<% for(TodoBeans todo : todoList) {%>
<p><%= todo.getUserName() %> : 
<%= todo.getText() %></p>
<% } %>
</body>
</html>
