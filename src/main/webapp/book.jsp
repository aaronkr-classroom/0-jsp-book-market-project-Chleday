<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>


<html>
<head>
<link>
<meta charset="EUC-KR">
<title>도서 정보</title>
</head>
<body>
<div class = "container py-4">
	<%@ include file = "menu.jsp" %>
	
	<div class= "p-5 mb-4 bg-body-teriary rounded-3">
	<div class= "container-fluid py-5">
		<h1 class= "display-5 fw-bold">도서정보</h1>
		<p class = "col-md-8 fs-4">BookInfo</p>
	</div>
</div>

<%
	String id = request.getParameter("id");
	BookRepository dao=BookRepository.getInstance();
	Book book = dao.getBookById(id);
%>

<div class = "row align-items-md-stretch">
	<div class= "col-md-12">
		<h3><b><%=book.getName() %></b></h3>
		<p> <%=book.getDescription() %>
		<p> <b>도서코드 : </b><span class="badge text-bg-danger">
		<%=book.getBookId() %></span>
		<p> <b>저자</b> : <%=book.getAuthor() %>
		<p> <b>출판사</b> : <%=book.getAuthor() %>
		<p> <b>출판일</b> : <%=book.getAuthor() %>
		<p> <b>분류</b> : <%=book.getAuthor() %>
		<p> <b>재고수</b> : <%=book.getAuthor() %>
		</div>
	</div>
	<jsp:include page = "footer.jsp"/>
</div>
</body>
</html>