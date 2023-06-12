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
<title>今日のタスク</title>
</head>
<body>
<h1>今日のタスク一覧</h1>
<form action="/sampleSJ/RegisterTask" method="post">
<input type="text"placeholder="やること" >
<input type="date" name="date">
<input type="submit" value="登録">
</form>
<p>
<%= site.getLike() %>人
<%= site.getLike() %>人
<a href="/sampleSJ/ProgramServlet?action=like">削除</a>:
<%= site.getLike() %>人
<a href="/sampleSJ/ProgramServlet?action=dislike">完了</a>:
<%= site.setBookname() %>人	
</p>
</body>
</html>