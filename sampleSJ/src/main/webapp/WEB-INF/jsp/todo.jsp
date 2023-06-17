<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.UserBeans,model.TodoBeans,java.util.List" %>
<%@ page import ="model.UserBeans" %>
<%
UserBeans login = (UserBeans) session.getAttribute("login");
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
<h1>メイン画面</h1>
<p>
<%= login.getName() %>   がログイン中
<a href="/sampleSJ/Logout">ログアウト</a>
</p>
<p><a href="/sampleSJ/Main">更新</a></p>
<form action="/sampleSJ/MainServlet" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<% for(TodoBeans todo : todoList) {%>
<p><%= todo.getUserName() %> : 
<%= todo.getText() %></p>
<% } %>
</body>
</html>
