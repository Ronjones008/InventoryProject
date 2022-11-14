<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Details</title>
</head>
<body >
<center>
    <center> <h1>Available Stock </h1>  </center>
    <hr>
     

	<jsp:useBean id="beanStock" class="com.Infinite.inventoryproject.StockDetails"></jsp:useBean>	
	<jsp:setProperty property="*" name="StockDetails"/>
	<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.StockDAO"></jsp:useBean>
	<form method="get" action="ShowStock.jsp">
	<table border="2" align="center" bgcolor="pink">
	<tr>
	<th>Stock Id</th>
	<th>Item Name</th>
	<th>Price</th>
	<th>Quantity Avail</th>
	</tr>
	<c:forEach var="Stock" items="${beanDao.ShowStock()}">	
	<tr>
	<td>${Stock.stockid}</td>
	<td>${Stock.itemName}</td>
	<td>${Stock.price}</td>
	<td>${Stock.quantityAvail}</td>
	 <td bgcolor="green"><a href="Update.jsp?id=${Stock.stockid}"><input type="button" value="Update" ></a></td>
	</tr>
	</c:forEach>
	</table>	
	</form>
	<center>
	<a href="SearchS.jsp?id=${Stock.stockid}"><input type="button" value="Search"></a>
	</center>



</body>
</html>