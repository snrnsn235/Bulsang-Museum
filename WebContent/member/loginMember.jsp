<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="../resources/css/style05.css"/>
<title>Login</title>
</head>
<body>
<div class="container">
	<%@ include file = "../menu2.jsp"%>	
	<div class="jumbotron">
		
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> 
					<input type="text" class="form-control" placeholder="ID" name="id" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input type="password" class="form-control" placeholder="Password" name="password" required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
		<br>
		<hr>
		<jsp:include page = "../footer02.jsp"/>
	</div>
</body>
</html>