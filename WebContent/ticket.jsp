<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Ticket" %>
<%@ page import = "dao.TicketRepository" %>
<%@ page errorPage = "exceptionNoTicketId.jsp" %>
<jsp:useBean id = "ticketDAO" class = "dao.TicketRepository" scope = "session"/>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet"  href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>입장권 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("입장권을 구매 하시겠습니까?")){
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
<div class = "container">
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">입장권 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		TicketRepository dao = TicketRepository.getInstance();
		Ticket ticket = dao.getTicketById(id);
	%>
	<div class="container">
	<div class ="row">	
				<div class="col-md-6">
					<img src ="./resources/images/<%=ticket.getFilename()%>" style="width: 100%"></div>
				
				<div class="col-md-6">
				<h3><%=ticket.getTicketname()%></h3>
				
				<p><%=ticket.getDescription() %>
				<p><b> 상품 코드 : </b><span class="badge badge-danger">
				<%= ticket.getTicketId() %></span>
				<p> <b>입장권 이름</b> : <%=ticket.getTicketname() %>
				<p> <b>입장권 설명</b> : <%=ticket.getDescription() %>
				<h4><%=ticket.getTicketPrice() %>원</h4>
				<p> <form name="addForm" action="./addCart.jsp?id=<%=ticket.getTicketId()%>" method="post">
				<a href="#" class="btn btn-info" onclick="addToCart()">예매하기 &raquo;></a>
				<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
				<a href = "./tickets.jsp" class="btn btn-secondary">입장권 목록 &raquo;</a>
				</form>
			</div>
		</div>
	</div>
		<hr>
	<jsp:include page = "footer01.jsp"/>
</div>
</body>
</html>