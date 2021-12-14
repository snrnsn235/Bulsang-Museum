<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
	Cookie phonenumber = new Cookie("Shipping_phonenumber",	URLEncoder.encode(request.getParameter("phonenumber"), "utf-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode",	URLEncoder.encode(request.getParameter("zipCode"), "utf-8"));
	
	cartId.setMaxAge(365 * 24 * 60 * 60);
	name.setMaxAge(365 * 24 * 60 * 60);
	shippingDate.setMaxAge(365 * 24 * 60 * 60);
	phonenumber.setMaxAge(365 * 24 * 60 * 60);

	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(zipCode);
	response.addCookie(phonenumber);


	response.sendRedirect("orderConfirmation.jsp");
%>
