<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

	<head>
		<title>Lost & Found Portal</title>
		
		<link rel="stylesheet" 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
	
		<link rel = "stylesheet"
		href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
		
		<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap">
		
		<link rel = "stylesheet" href = "css/style.css">
		
	</head>

	<body class="bg-dark text-light">
	
		<jsp:include page="navbar.jsp"/>
		
		<div class="container text-center mt-4 text-white">
			<h1 class="mb-4">Lost & Found Portal</h1>
			
			<p class="text-secondary mb-5">Manage lost and found items easily</p>
			
			<div class="row justify-content-center g-4">
				
				<div class="col-md-4 mb-4">		
				<div class="card bg-dark border-secondary text-white">				
				<div class="card-body text-white">				
				<i class="fa-solid fa-plus fa-2x mb-3"></i>
				
				<h4>Add Item</h4>
				
				<a href="addItem" class="btn btn-primary mt-3">Open</a>				
				</div>				
				</div>				
				</div>
				
				
				<div class="col-md-4 mb-4">				
				<div class="card bg-dark border-secondary tex-white">				
				<div class="card-body text-white">				
				<i class="fa-solid fa-list fa-2x mb-3"></i>
				
				<h4>View Items</h4>
				
				<a href="viewItems" class="btn btn-success mt-3">Open</a>				
				</div>				
				</div>				
				</div>
				
				
				<div class="col-md-4 mb-4">				
				<div class="card bg-dark border-secondary text-white">				
				<div class="card-body text-white">				
				<i class="fa-solid fa-magnifying-glass fa-2x mb-3"></i>
				
				<h4>Search Items</h4>
				
				<a href="searchItem.jsp" class="btn btn-info mt-3">Open</a>				
				</div>				
				</div>				
				</div>
				
			</div>
		</div>
		
		<jsp:include page="footer.jsp"/>
	</body>
</html>