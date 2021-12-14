<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Ticket"%>
<%@ page import="dao.TicketRepository"%>
<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_phonenumber = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_phonenumber"))
				shipping_phonenumber = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>
	
	<div class="container">
	<jsp:include page="menu.jsp" />
		<div class="jumbotron">
			<h1 class="display-3">주문 정보</h1>
		</div>
	<div class="container col-8 alert alert-info">
		<div class="text-center ">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>연락처</strong> <br> 성명 : <% out.println(shipping_name); %><br> 
			</div>
			<div class="col-4" align="right">
				<p>	<em>전송일: <% out.println(shipping_shippingDate);	%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">입장권</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
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
				<td class="text-center"><em><%=ticket.getTicketname()%> </em></td>
				<td class="text-center"><%=ticket.getQuantity()%></td>
				<td class="text-center"><%=ticket.getTicketPrice()%>원</td>
				<td class="text-center"><%=total%>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><%=sum%> </strong></td>
			</tr>
			</table>			
				<a href="./shippinginfo.jsp?cartId=<%=shipping_cartId%>"class="btn btn-secondary" role="button"> 이전 </a>
				<a href="./thankCustomer.jsp"  class="btn btn-success" role="button"> 주문 완료 </a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> 취소 </a>			
		</div>
	</div>	
	<hr>
		<jsp:include page = "footer01.jsp"/>
	</div>
</body>
</html>