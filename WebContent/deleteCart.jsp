<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Ticket" %>
<%@ page import = "dao.TicketRepository" %>

	<%
		String id = request.getParameter("cartId");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	session.invalidate();
	
	response.sendRedirect("cart.jsp");
	%>
