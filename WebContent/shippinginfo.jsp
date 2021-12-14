<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>입장권 구매</title>
</head>
<body>
<div class="container">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<h1 class="display-3">입장권 구매</h1>
	</div>
	<div class="container">
		<form action="./processShippinginfo.jsp" class="form-horizontal"method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>">
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control">
				</div>
			</div>
				<div class="form-group row">
				<label class="col-sm-2">전송일</label>
				<div class="col-sm-5">
					<input name="shippingDate" type="text" class="form-control">(yyyy/mm/dd)
				</div>
			</div>
				<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">연락처</label>
				<div class="col-sm-3">
					<input name="phonenumber" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
					<input type="submit" class="btn btn-primary" value="등록" /> 
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
				</div>
			</div>
		</form>
	</div>
	<hr>
		<jsp:include page = "footer01.jsp"/>
	</div>
</body>
</html>