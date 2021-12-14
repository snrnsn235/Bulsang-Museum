<%@ page contentType="text/html; charset=utf-8"%> 

<html>
<head>
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/style.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="EUC-KR">
<title>Welcome</title>
</head>
<style>
.carousel{
	z-index:-100;
}
</style>
<body>
<div class= "container">	
	<%@ include file = "menu.jsp"%>	
<br>
	<div id="demo" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./resources/images/picture1.png" alt="buta" width="1100" height="570px">
    </div>
    <div class="carousel-item">
      <img src="./resources/images/picture2.png" alt="buta" width="1100" height="570px">
    </div>
    <div class="carousel-item">
      <img src="./resources/images/picture3.png" alt="3D" width="1100" height="570px">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev" width="40px">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<hr>
<br>
<div class= "fp-tableCell" style ="height:1000px;">
		<h2 class="heading1" style="text-align:center;">&lt; 박물관의 또 다른 볼거리&gt; </h2>
		<div class="container tab-wrap">
			<div class="tab-box tab01">
				<div class= "img-wrap">
					<img src="./resources/images/background.jpg" height="610px" alt="밤하늘">	
				</div>
				<br>
			<div class= " cont-wrap">
				<h3 class=:desc"><strong class= "tit">아름다운 대구의 밤하늘을 여기서 느껴보세요.</strong></h3>
					 기간 : 2021-09 ~ 2021-12-30까지 야간개장 시간에 맞춰서 보실수 있습니다.<br/>
					 장소 : 국립불상박물관 뒷뜰
			
				<p class = "detail-cont">
					환경오염에 의해 밤하늘에 별을 본지 오래된 현대인들에게 맞는 볼거리를 제공해드리고자 합니다.
					<br>
					청아하고 깨끗한 가을, 겨울 밤하늘을 보시면서 이제껏 갖고 있던 스트레스를 풀어보시고, 가족들과도 좋은 추억만드시길 바랍니다.	
			</div>	
		</div>
	</div>
</div>
<h1 style="text-align:center;">관람안내</h1>
<div class="card-group">
 			 <div class="card">
	   			 <img src="./resources/images/clock.jpg" class="card-img-top" alt="...">
	    			<div class="card-body">
				      <h5 class="card-title">관람시간</h5>
				      <p class="card-text">09:00 ~ 18:00</p>
				      <p class="card-text"><small class="text-muted">토, 일요일, 공휴일은 1시간 연장합니다</small></p>
	    			</div>
	 		 </div>
			  <div class="card">
			    	<img src="./resources/images/clock1.jpg" class="card-img-top" alt="...">
			    		<div class="card-body">
					      <h5 class="card-title">입장시간</h5>
					      <p class="card-text">관람종료시간 30분 전까지 가능합니다.</p>
					      <p class="card-text"><small class="text-muted">시간엄수!!</small></p>
			   			 </div>
			  </div>
			  <div class="card">
			    	<img src="./resources/images/ticket3.jpg" class="card-img-top" alt="...">
			   			 <div class="card-body">
					      <h5 class="card-title">야간개장</h5>
					      <p class="card-text">09월 ~ 12월까지 매주 토요일 09:00 ~ 21:00</p>
					      <p class="card-text"><small class="text-muted">코로나19 상황으로 18:00까지 관람가능합니다. 양해부탁드립니다.</small></p>
			    		</div>
			  </div>					
			  <div class="card">
			    	<img src="./resources/images/ticket0.jpg" class="card-img-top" alt="...">
			   			 <div class="card-body">
					      <h5 class="card-title">입장료</h5>
					      <p class="card-text">성인 : 5000원 중고등학생 : 3000원, 유아/임산부/노약자 : 1000원</p>
					      <p class="card-text"><small class="text-muted">야간개장시 입장료는 추후에 공지해드리겠습니다.</small></p>
					      <p class="card-text"><small class="text-muted">인터넷예매 가능</small></p>
			    		</div>
  			</div>
		</div>

	
<hr>
	<%@include file = "footer.jsp"%>
</div>		
</body>
</html>