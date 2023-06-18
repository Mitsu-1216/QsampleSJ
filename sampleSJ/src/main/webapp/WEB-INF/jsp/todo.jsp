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
.table{
width: 60%;
margin: 0 auto;
}
.v-middle {
  vertical-align: middle;
  }
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
<input type="submit" value="登録" class="btn btn-primary">
</form>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>

<table class="table table-bordered my-5 table-striped" border="1">
<tr class="table-primary">
<th style="width: 10%">ユーザー名</th>
<th style="width: 10%">タスク内容</th>
<th style="width: 10%">削除</th>
</tr>
<% for(TodoBeans todo : todoList) {%>
<tr>
<form action="/sampleSJ/DeleteServlet" method="post">
<td class="v-middle"><%= todo.getUserName() %></td>
<td class="v-middle"><%= todo.getText() %></td>
<td>
<input type="hidden" name="text" value="<%= todo.getText() %>">
<input type="submit" value="削除" class="btn btn-danger">
</td>
</form>
<% } %>
</tr>
</table>
<% if(todoList.size() == 0) { %>
<p>タスクが登録されていません</p>
<% } %>
</div>
</body>
</html</td>
