<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Ticket"%>
<%@ page import="dao.TicketRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body>
	<div class="container">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		
			<h1 class="display-3">장바구니</h1>
		</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">모든예매 취소하기</a></td>
					<td align="right"><a href="./shippinginfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Ticket> cartList = (ArrayList<Ticket>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Ticket>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Ticket ticket = cartList.get(i);
						int total = ticket.getTicketPrice() * ticket.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%=ticket.getTicketId()%> - <%=ticket.getTicketname()%></td>
					<td><%=ticket.getTicketPrice()%></td>
					<td><%=ticket.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=ticket.getTicketId()%>" class="badge badge-danger">선택 입장권삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./tickets.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer01.jsp" />
	</div>
</body>
</html>