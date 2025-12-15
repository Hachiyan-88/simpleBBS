<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bbsServlet.Post" %>

<% List<Post> postList = (List<Post>) request.getAttribute("postList");  %>

<html>
	<head>
		<meta charset="UTF-8">
		<title>投稿一覧</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	</head>
	
	<body>
		<div class="container">
		<h1>投稿一覧</h1>
		
		<% if(postList == null || postList.isEmpty()) { %>
			<p>まだ投稿はありません</p>
		<% } else { %>
		
			<ul style="text-align: left;">
				<% for(Post p : postList) { %>
				<li style="margin-bottom: 15px;">
					<strong><%= p.getName() %></strong><br>
					<%= p.getComment() %>
				</li>
				<% } %>
			</ul>
		<% } %>
		
		<a href="<%=request.getContextPath()%>/create" class="btn">新規投稿する</a>
		<a href="/simpleBBS/" class="btn">トップへ戻る</a>
		
		
		</div>
	</body>
</html>