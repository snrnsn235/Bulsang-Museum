<%@ page contentType="text/html; charset=utf-8"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<link rel = "stylesheet"  href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
<link rel = "stylesheet" href= "./resources/css/style01.css">
<title>지도</title>
</head>
<style>
.map  {
align-items: center;
}
</style>
<body>
<div class="container" >
<%@ include file = "menu.jsp"%>	
	<div class = "jumbotron" style="height:200px;">
					<div class = "container">
						<h1 class = "display-3">오시는길 </h1>
			</div>
	</div>
	<h2  style="text-align:center;">오시는 길</h2>
	<div class = "map">
		<img src = "./resources/images/road.png" style="height:620px;" "align-items=center;">
		<p> &nbsp;&nbsp;현재 저희 박물관 근처에는 마땅한 교통시설이 없음을 알려드립니다. 그래서 저희 박물관을 방문하실시엔 자가용, 혹은 택시를 이용하실 것을 부탁드립니다.
		<br> 아직 우리 박물관이 개장 된 지 얼마 되지 않아 발생한 문제이오니 속히 해결하겠습니다. 감사합니다.
		</div>
		<hr>
	<%@include file = "footer01.jsp"%>
</div>
</body>

</html>