<%@ page contentType = "text/html; charset=utf-8" %>
<head>
	<meta charset="utf-8"/>
	<meta name = "viewport" content="width=divice-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link rel="stylesheet" href="./resources/css/style03.css"/>
	<title>영상배경홈페이지</title>
	</head>
	<body>
		<header class="vid-header container">
			<div class = "fullscreen-vid-wrap">
				<video src="./resources/video/buta.mp4" autoplay muted loop></video>
			</div>
			<div class="header-overlay"></div>
			<div class="header-content">
				<h1>안녕하세요! 우리 박물관에 오신 것을 환영합니다.</h1>
				<br>
				<br>
				<br>
				<br>
				<p>어서오세요~앞으로 많은 문화재를 전시할 예정입니다. 많은 방문 부탁드리겠습니다.</p>
				<a class = "btn" href="./welcome.jsp">방문하기</a>
			</div>
		</header>
		
		<%@include file = "footer.jsp"%>
	</body>