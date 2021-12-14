<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Ticket" %>
<%@ page import = "dao.TicketRepository" %>
    <jsp:useBean id = "ticketDAO" class = "dao.TicketRepository" scope = "session"/>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet"  href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>입장권 목록</title>
</head>
<body>
<div class ="container">
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">입장권 예매하기</h1>
		</div>
	</div>
	<%
		TicketRepository dao = TicketRepository.getInstance();
			ArrayList<Ticket> listOfTickets = dao.getAllTickets();
	%>
	<div class = "container" style="height:1000px;">
		<div class = "row" align = "center">
			<%
				for(int i = 0; i < listOfTickets.size(); i++)
					{
						Ticket ticket = listOfTickets.get(i);
			%>
			<div class = "col-md-6">
				<img src="./resources/images/<%=ticket.getFilename()%>" style="height: 250px;">
				<h3><%= ticket.getTicketname() %></h3>
				<p><%= ticket.getDescription() %>
				<p><%= ticket.getTicketPrice() %>원
				<p><a href="./ticket.jsp?id=<%=ticket.getTicketId()%>" 
				class="btn btn-secondary" role="button">상세 정보 &raquo;></a>	
			</div>
			<%
				}
			%>
		</div>
	</div>
	<hr>
	<jsp:include page = "footer01.jsp"/>
</div>
</body>

</html>