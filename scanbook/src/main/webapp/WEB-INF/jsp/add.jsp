<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
</head>
<body>
	
	<center>
		<form action="add.html" method="post">
			<table border="1">
				<tr>
					<th>Enter Barcode : </th>
					<td><input type="text" name="barcode"></td>
				</tr>
				<tr>
					<th>Enter Title : </th>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>Enter Author : </th>
					<td><input type="text" name="author"></td>
				</tr>
				<tr>
					<th>Enter No. of Pages : </th>
					<td><input type="text" name="pages"></td>
				</tr>
				<tr>
					<th>Is Read? (1 or 0) : </th>
					<td><input type="text" name="read"></td>
				</tr>				
			</table>
			<br/>
			<input type="submit" value="Add Book">
			
		</form>
	</center>	
	
</body>
</html>