<%@ page contentType="text/html; charset=UTF-8" %>
<% 
	String error = (String) request.getAttribute("error"); 
	String nameValue = (String) request.getAttribute("name");
	if (nameValue == null) nameValue = "";

	String commentValue = (String) request.getAttribute("comment");
	if (commentValue == null) commentValue = "";
%>

<html>
	<head>
    	<meta charset="UTF-8">
    	<title>投稿フォーム</title>
    	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	</head>
	<body>
	
	<div class="container">
    <h1>新規投稿</h1>

    <% if (error != null) { %>
        <div class="error"><%= error %></div>
    <% } %>

    <form action="create" method="post">
        名前：<br>
        <input type="text" name="name" class="input-field"
               value="<%= request.getAttribute("name") != null ? request.getAttribute("name") : "" %>"><br>

        コメント：<br>
       <textarea name="comment" class="input-field" rows="5"><%= commentValue %></textarea><br>
        <input type="submit" value="投稿" class="btn">
    </form>

    <p><a href="<%=request.getContextPath()%>/list" class="btn">戻る</a></p>
</div>

	</body>
</html>
