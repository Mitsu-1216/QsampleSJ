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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Todoアプリ</title>
<style>

</style>
</head>
<body>
<div class="container text-center">
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
<% if(todoList.size() == 0) { %>
<p>タスクが登録されていません</p>
<% } %>
<table class="table table-bordered my-5">
<tr class="table-primary">
<th>ユーザー名</th>
<th>タスク内容</th>
<th>削除ボタン</th>
</tr>
<% for(TodoBeans todo : todoList) {%>
<tr>
<form action="/sampleSJ/DeleteServlet" method="post">
<td><%= todo.getUserName() %></td>
<td><%= todo.getText() %></td>
<td>
<input type="hidden" name="text">
<input type="submit" value="削除">
</td>
</form>
<% } %>
</tr>
</table>
</div>
</body>
</html</td>
