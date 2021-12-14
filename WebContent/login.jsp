<%@ page contentType="text/html; charset=utf-8"%> 
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>	
<title>Login page</title>
</head>
<body>
<div class="container">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<h1 class = "display-3">로그인해주세요</h1>
		</div>
	</div>
	<div class = "container" align="center">
		<div class = "col-md-4 col-md-offset-4">
			<h3 class = "form-signin-heading">Please sign in<br/>(로그인 해주세요)</h3>
			<%
				String error = request.getParameter("error");
				if(error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해주세요");
					out.println("</div>");
				}
				%>
				<form class = "form-signin" action="j_security_check" method=
				"post">
					<div class = "form-group">
						<label for="inputUserName" class ="sr-only">User Name
						</label>
						<input type = "text" class="form-control" placeholder=
						"ID" name = 'j_username' required autofocus>
						</div>
						<div class="form-group">
							<label for="inputPassword" class ="sr-only">Password
						</label>
						<input type="password" class="form-control"
						placeholder="password" name = 'j_password' required>
						</div>
						<button class="btn btn btn-lg btn-success btn-block"
						type="submit">로그인</button>
				</form>
		</div>
		<hr>
		<%@include file = "footer01.jsp"%>
	</div>
</body>
</html>