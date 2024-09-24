<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = dto.Book %>
<jsp:useBean id = "bookDAO" class = "dao.BookRepository" scope = "session" />

<html>
<head>
<link>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
<div class = "container py-4">
	<%@ include file = "menu.jsp" %>
	
	<div class= "p-5 mb-4 bg-body-teriary rounded-3">
	<div class= "container-fluid py-5">
		<h1 class= "display-5 fw-bold">��������</h1>
		<p class = "col-md-8 fs-4">BookInfo</p>
	</div>
</div>

<%
	String id = request.getParameter("id");
	Book book = bookDAO.getBookById(id);
%>

<div class = "row align-items-md-stretch">
	<div class= "col-md-12">
		<h3><b><%=book.getName() %></b></h3>
		<p> <%=book.getDescription() %>
		<p> <b>�����ڵ� : </b><span class="badge text-bg-danger">
		<%=book.getBookId() %></span>
		<p> <b>����</b> : <%=book.getAuthor() %>
		<p> <b>���ǻ�</b> : <%=book.getAuthor() %>
		<p> <b>������</b> : <%=book.getAuthor() %>
		<p> <b>�з�</b> : <%=book.getAuthor() %>
		<p> <b>����</b> : <%=book.getAuthor() %>
		</div>
	</div>
	<jsp:include page = "footer.jsp"/>
</div>
</body>
</html>