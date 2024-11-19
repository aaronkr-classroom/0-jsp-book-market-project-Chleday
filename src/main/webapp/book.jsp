<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<%@ page errorPage = "exceptionNoBookId.jsp" %>

<html>
<head>
<link rel= "stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="EUC-KR">
<title>도서 상세 정보</title>
<script type="text/javascript">
	fuction addToCart() {
		if (confirm("도서를 장바구니에 추가하시겠습니까?")) {
			document.addForm.subtitle
		}
	}
</script>
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
	<div class="col-md-5">
		<img src="./resources/images/<%=book.getFilename() %>" style=
		"width : 70 %">
	</div>
	<div class= "col-md-12">
		<h3><b><%=book.getName() %></b></h3>
		<p> <%=book.getDescription() %>
		<p> <b>도서코드 : </b><span class="badge text-bg-danger">
		<%=book.getBookId() %></span>
		<p> <b>저자</b> : <%=book.getAuthor() %>
		<p> <b>출판사</b> : <%=book.getPublisher() %>
		<p> <b>출판일</b> : <%=book.getReleaseDate() %>
		<p> <b>분류</b> : <%=book.getCategory() %>
		<p> <b>재고수</b> : <%=book.getUnitsInStock() %>
		<h4><%=book.getUnitPrice() %>원</h4>
		<p> <form name="addForm" action="./addCart.jsp?id=<%=book.getBookId() %>" method="POST">
			<a href="#" class="btn btn-info"> 도서주문 &raquo;</a>
			<a href= "./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
			<a href= "./books.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
			</form>
		</div>
	</div>
	<jsp:include page = "footer.jsp"/>
</div>
</body>
</html>