<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String shipping_cartId="";
	String shipping_name = ""; String shipping_shippingDate="";
	String shipping_country="";
	String shipping_zipCode="";
	String shipping_addressName="";
	Cookie[] cookies = request.getCookies();
	if (cookies!=null) {
	for (int i=0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i]; String n = thisCookie.getName(); if (n.equals("shipping_cartId"))
	shipping_cartId=URLDecoder.decode((thisCookie.getValue()), "utf-8");
	if (n.equals("Shipping shippingDate"))
	shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
%>

<div class="container py-4">
<%@include file="menu.jsp"%>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3"> 
		<div class="container-fluid py-5">
		<h1 class="display-5 fw-bold"> </h1> <p class="col-md-8 fs-4">Order Completed</p>
		</div>
	</div>
	<div class="row align-items-md-stretch">
	<h2 class="alert alert-danger">4.</h2> <p> #22 out.println(shipping shippingDate);
	<p> <out.println(shipping_cartId); $>
	</div>
<div class="container">
<p> <a href="./books.jsp" class="btn btn-secondary"> &laquo;) </div>
include file="footer.jsp">
</div>
</body>
</html>
<%
session.invalidate();
for (int i=0; i < cookies.length; i++) {
Cookie thisCookie=cookies[i]; 
String n= thisCookie.getName(); 
if (n.equals("shipping_cartId")) thisCookie.setMaxAge(0);
if (n.equals("shipping_name")) thisCookie.setMaxAge(0);
if (n.equals("Shipping shippingDate")) thisCookie.setMaxAge(0);
if (n.equals("shipping_country"))
thisCookie.setMaxAge(0);
if (n.equals("Shipping zipCode"))
thisCookie.setMaxAge(0);
%>

if(n.equals("Shipping_addressName"))
	thisCookie.setMaxAge(0);
	
response.addCookie(thisCookie);