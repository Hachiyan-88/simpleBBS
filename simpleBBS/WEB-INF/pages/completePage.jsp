<%@ page contentType="text/html; charset=UTF-8" %>

<html>
	<head>
		<meta charset="UTF-8">
		<title>投稿完了 - SimpleBBS</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	</head>
	
	<body>
		
		<div class="container">
			<h1>投稿が完了しました</h1>
			
			<div class="post-info">
				<p>名前：${ name }</p>
				<p>コメント：${ comment }</p>
			</div>
		
			<a href="/simpleBBS/" class="btn">トップへ戻る</a>
			<a href="list" class="btn">掲示板一覧へ</a>
		</div>
	</body>
</html>