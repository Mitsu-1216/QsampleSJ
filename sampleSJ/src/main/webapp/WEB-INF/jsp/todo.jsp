<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.UserBeans,model.TodoBeans,java.util.List,java.util.Date,java.text.SimpleDateFormat" %>
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
  
  h1 {
  position: relative;
  background: #dfefff;
  box-shadow: 0px 0px 0px 5px #dfefff;
  border: dashed 2px white;
  padding: 0.2em 0.5em;
  color: #454545;
  display:inline-block;
}

h1:after {
  position: absolute;
  content: '';
  left: -7px;
  top: -7px;
  border-width: 0 0 15px 15px;
  border-style: solid;
  border-color: #fff #fff #a8d4ff;
  box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);
}

.btn-fixed {
	position:fixed;
	top:50px;
	right:50px;
	display:inline-block;
}

</style>
</head>
<body>
<div class="container text-center">
<h1 class="my-5"><%= session.getAttribute("name") %>さんのタスク一覧</h1>
<%
Date date = new Date();
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
String stringDate= format.format(date); 
%>
<form action="/sampleSJ/MainServlet" method="post">
<input type="date" name="date" value="<%= stringDate %>">
<input type="text" name="text" placeholder="タスクを入力してください">
<input type="submit" value="登録" class="btn btn-primary">
</form>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<table class="table table-bordered my-5 table-striped" border="1">
<tr>
<th>期限</th>
<th>ユーザー名</th>
<th>タスク内容</th>
<th>削除</th>
</tr>
<% for(TodoBeans todo : todoList) {%>
<tr>
<form action="/sampleSJ/DeleteServlet" method="post">
<td class="v-middle"><%= todo.getDeadline() %></td>
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
<div class="btn-fixed">
<a href="/sampleSJ/Logout" class="btn btn-dark">ログアウト</a>
</div>
</body>
</html</td>
