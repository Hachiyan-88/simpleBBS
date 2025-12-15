<%@ page contentType="text/html; charset=UTF-8" %>

<html>
	<head>
    	<meta charset="UTF-8">
    	<title>Simple BBS</title>
    	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	</head>
	
	<body>
		<div class="container">
    	<h1>掲示板</h1>
    
    	<p><a href="/simpleBBS/create" class="btn">投稿する</a></p>
    	<hr>
    
    	<p>ここに投稿が表示されます。（まだデータなし）</p>
    	
    	<a href="index.jsp" class="btn">トップへ戻る</a>
    	
    	</div>
	</body>
</html>
