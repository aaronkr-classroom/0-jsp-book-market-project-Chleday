<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Any</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String filename="";
		String realFolder="C:\\Users\\user\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\impages";
		int maxSize=5 * 1024 * 1024;
		String encType = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		String bookId=multi.getParameter("bookId");
		String name=multi.getParameter("name");
		String unitPrice=multi.getParameter("unitPrice");
		String author=multi.getParameter("author");
		String publisher=multi.getParameter("publisher");
		String releaseDate=multi.getParameter("releaseDate");
		String description=multi.getParameter("description");
		String category=multi.getParameter("category");
		String unitsInStock=multi.getParameter("unitsInStock");
		String condition=multi.getParameter("condition");
		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName = multi.getFilesystemName(fname);
		
		Integer price;
		
		if (unitPrice == null || unitPrice.isEmpty()) {
		    price = 0;
		} else {
		    price = Integer.valueOf(unitPrice);
		}

		long stock;

		if (unitsInStock == null || unitsInStock.isEmpty()) {
		    stock = 0;
		} else {
		    stock = Long.valueOf(unitsInStock);
		}
		
		PreparedStatement pstmt=null;
		
		String sql = "INSERT INTO book VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, bookId);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, author);
		pstmt.setString(5, description);
		pstmt.setString(6, publisher);
		pstmt.setString(7, category);
		pstmt.setLong(8, stock);
		pstmt.setString(9, releaseDate);
		pstmt.setString(10, condition);
		pstmt.setString(11, fileName);
		pstmt.executeUpdate();
		
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		
		response.sendRedirect("books.jsp");
	%>
</body>
</html>