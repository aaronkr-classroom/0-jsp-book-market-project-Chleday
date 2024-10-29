<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href = "./resources/css/bootstrap.min.css" rel = "stylesheet" />
<script type="text/javascript" src = "./resources/js/validation.js"></script>
<meta charset="EUC-KR">
<title>���� ���</title>
</head>
<body>
<div class = "container py-4">
	<%@ include file = "menu.jsp" %>
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class= "container-fluid p-5">
			<h1 class = "display-5 fw-bold">���� ���</h1>
			<p class = "col-md-8 fs-4">Book Addition</p>
		</div>
	</div>
	<div class = "row align-items-md-stretch">
		<form name= "newBook" action = "./processAddBook.jsp" class= "form-horizontal" method = "post" enctype = "multipart/form-data">
			<div class= "mb-3 row">
				<label class= "col-sm-2">�����ڵ�</label>
				<div class= "col-sm-3">
					<input type = "text" id="bookId" name="bookId" class="form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">������</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div> 
			<div class = "mb-3 row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-3">
					<input type="text" name="author" class="form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">���ǻ�</label>
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">������</label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
			
			<div class = "mb-3 row">
				<label class="col-sm-2">������</label>
				<div class="col-sm-5">
					<textarea name = "description" id = "description" cols= "50" rows="2"
					class="form-control" placeholder="100�� �̻� �����ּ���"></textarea>
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">�з�</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-3">
					<input type="text" id = "unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New"> �űԵ���
					<input type="radio" name="condition" value="Old"> �߰���
					<input type="radio" name="condition" value="EBook"> E-Book
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">�̹���</label>
				<div class = "col-sm-5">
					<input type = "file" name = "BookImage" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type= "button" class = "btn btn-primary" value= "���" onclick = "CheckAddBook()">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page = "footer.jsp" />
</div>

</body>
</html>