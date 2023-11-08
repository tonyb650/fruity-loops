<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Fruit Store</title>
	<!-- link rel="stylesheet" href="/css/style.css"/>  -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">

	<h1 class="text-info">Fruit Store</h1>
	<table class="table border border-4 border-info">
		<thead>
			<tr>
				<th>Fruit Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="singlefruit" items="${ fruits }">
				<tr>
					<c:if test = "${singlefruit.name.charAt(0) == firstChar }">
						<td class="text-success"><c:out value="${singlefruit.name }"/></td>
						<td class="text-success"><c:out value="${singlefruit.price }"/></td>
					</c:if>
					<c:if test = "${singlefruit.name.charAt(0) != firstChar }">
						<td class="text-primary"><c:out value="${singlefruit.name }"/></td>
						<td class="text-primary"><c:out value="${singlefruit.price }"/></td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>
		</div>
</body>
</html>