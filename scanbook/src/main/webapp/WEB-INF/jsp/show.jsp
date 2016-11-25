<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show  All Books</title>
</head>
<body>
	<center>
		<table border="1">
				<thead>
					<tr>
						<th>Book(s)</th>
						<th>Author</th>
						<th>Number Of Pages</th>
						<th>Read</th>											
						<th>Borrow Book</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${books}" var="b">
						<tr>
							<td>${b.title}</td>
							<td>${b.author}</td>
							<td>${b.pages}</td>	
							<c:choose>
								<c:when test="${b.read == 1}">
									<td>Yes</td>
								</c:when>
								<c:when test="${b.read == 0}">
									<td>No</td>
								</c:when>								
							</c:choose>					
							<td><a href="borrow_book.jsp">Borrow</a></td>
						</tr>
					</c:forEach>					
				</tbody>
			</table>
			<br/>
			<br/>
			<a href="add.html">Add Book</a>
	</center>
</body>
</html>