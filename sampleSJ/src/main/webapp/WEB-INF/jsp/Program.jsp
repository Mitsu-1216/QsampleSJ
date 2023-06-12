<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans" %>
<!DOCTYPE html>
<%
JavaBeans site =(JavaBeans) application.getAttribute("site");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Todoアプリ</title>
</head>
<body>
<h1>ようこそ!できた！</h1>
<input type="text"placeholder="やること" >
<button type="submit">click!</button>
<p>
<a href="/sampleSJ/ProgramServlet?action=like">タスク</a>:
<%= site.getLike() %>人
<a href="/sampleSJ/ProgramServlet?action=dislike">Bad!</a>:
<%= site.getDislike() %>人
</p>

<form action="/sampleSJ/RegisterTask" method="post">
<input type="text" name="task">
<input type="date" name="date">
</form>

</body>
</html>