<%@ page contentType="text/html; charset=utf-8"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel = "stylesheet"  href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
<link rel = "stylesheet" href= "./resources/css/style01.css">
<title>Introduce</title>
</head>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}
section{
	padding: 0 100px;
	background : url(./resources/images/see.jpg);
	height: 80vh;
	display: flex;
	align-items: center;
	flex-direction: row-reverse;
	background-size:cover;
}
.box {
	position: relative;
	max-width: 1000px;
	padding: 50px;
	background:rgba(255, 255, 255, 0.2);
	box-shadow:0 5px 15px rgba(0,0,0,0.5);
}

.box h2 {
	margin:0 0 20px;
	padding:0;
	font-size:48px;
	text-transform:uppercase;
	color:#fff;
	}
.box p {
	margin:0;
	padding:0;
	font-size:25px;
	color:#fff;
}
.map {
align-items: center;
}
</style>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename = "bundle.message">
		<div class= "container" >
			<%@ include file = "menu.jsp"%>
				<div class = "jumbotron" style="height:200px;">
					<div class = "container">
						<h1 class = "display-3"><fmt:message key="introduce"/></h1>
						<div class="text-right">
							<a href="?language=ko">한국어</a>&nbsp;|&nbsp;<a href="?language=en">English</a>
						</div>
					</div>
				</div>
				<br>
				<section>
				<div class="box">
						<h2><fmt:message key="introduce"/></h2>
						<p><fmt:message key="introduce2"/>
					</div>
				</section>
				
	
<%@include file = "footer01.jsp"%>
</div>
</fmt:bundle>
</body>
</html>