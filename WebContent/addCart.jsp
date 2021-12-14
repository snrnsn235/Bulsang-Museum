<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Ticket"%>
<%@ page import="dao.TicketRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("tickets.jsp");
		return;
	}

	TicketRepository dao = TicketRepository.getInstance();

	Ticket ticket = dao.getTicketById(id);
	if (ticket == null) {
		response.sendRedirect("exceptionNoTicketId.jsp");
	}

	ArrayList<Ticket> goodsList = dao.getAllTickets();
	Ticket goods = new Ticket();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getTicketId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Ticket> list = (ArrayList<Ticket>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Ticket>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Ticket goodsQnt = new Ticket();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getTicketId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("ticket.jsp?id=" + id);
%>