<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Ticket" %>
<%@ page import = "dao.TicketRepository" %>


	<% 
		String id = request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("tickets.jsp");
		return;
	}
	
	TicketRepository dao = TicketRepository.getInstance();
	
	Ticket ticket = dao.getTicketById(id);
	if(ticket == null){
		response.sendRedirect("exceptionNoTicketId.jsp");
	}
	ArrayList<Ticket> cartList = (ArrayList<Ticket>) session.getAttribute("cartlist");
	Ticket goodsQnt = new Ticket();
	for(int i=0; i<cartList.size();i++){
		goodsQnt = cartList.get(i);
		if(goodsQnt.getTicketId().equals(id)){
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
	%>