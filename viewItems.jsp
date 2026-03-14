<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title> View Items </title>
		
		<link rel="stylesheet" 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
	
		<link rel = "stylesheet"
		href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
		
		<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap">
		
		<link rel = "stylesheet" href = "css/style.css">
		
	</head>
	
	<body class="bg-dark">
	
	<div class="container mt-4">
	
		<jsp:include page="navbar.jsp"/>		

		<table class="table table-striped table-hover">
		
		<thead class="table-dark">
			<tr>
				<th> ID </th>
				<th> Item Name </th>
				<th> Description </th>
				<th> Location </th>
				<th> Status </th>
				<th> Contact </th>
				<th> Action </th>
				<th> Delete </th>
				<th> Edit </th>
			</tr>
			
			<c:forEach var = "item" items = "${items}">
			
			<tr>
				<td>${item.id}</td>
				<td>${item.item_name}</td>
				<td>${item.description}</td>
				<td>${item.location}</td>
				
				<!-- STATUS -->
				<td>
					<c:choose>
						<c:when test="${item.status == 'Lost'}">
						<span class="badge bg-danger">Lost</span>
						</c:when>
						
						<c:when test="${item.status == 'Found'}">
						<span class="badge bg-primary">Found</span>
						</c:when>
						
						<c:when test="${item.status == 'Returned'}">
						<span class="badge bg-success">Returned</span>
						</c:when>
					</c:choose>
				</td>
				
				<!-- Contact -->
				<td>${item.contact}</td>
				
				<!-- Marking RETURNED -->
				<td> 
					<c:choose>
						<c:when test="${item.status == 'Returned'}">
							<a class="btn btn-success btn-sm px-3">
							✓ Returned
							</a>
						</c:when>
						<c:otherwise>
							<a class="btn btn-warning btn-sm px-3" href="markReturned?id=${item.id}">Mark Returned</a>
						</c:otherwise>
					</c:choose>
				</td>
				
				<!-- DELETE -->				
				<td> <a class="btn btn-danger btn-sm px-3"
						href="deleteItem?id=${item.id}"
						onclick="return confirm('Delete this item?')">
						Delete
					</a> 
				</td>
				
				<!-- EDIT -->
				<td>
					<a class="btn btn-info btn-sm px-3"
						href="editItem?id=${item.id}">Edit</a>
				</td>
			</tr>
			
			</c:forEach>
			</thead>
		</table>
		
	</div>	
	
	<jsp:include page="footer.jsp"/>
	</body>
</html>