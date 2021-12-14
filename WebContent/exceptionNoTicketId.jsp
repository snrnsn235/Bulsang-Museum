<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel= "stylesheet"	href="./resources/css/bootstrap.min.css"/>
<title>입장권 아이디 오류</title>	
</head>
<body>
	<div class = "container">
		<%@ include file = "menu.jsp"%>	
		<div class = "jumbotron">
			<h2 class = "alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class ="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p> <a href = "tickets.jsp" class = "btn btn-secondary"> 입장권목록 
		&raquo;</a>
	</div>
</body>
</html>