<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

	<head>
	<title>Search Item</title>
		
		<link rel="stylesheet" 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
	
		<link rel = "stylesheet"
		href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
		
		<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap">
		
		<link rel = "stylesheet" href = "css/style.css">
			
	</head>
	
	<body class="bg-dark text-light">
	
		<h2>Search Lost & Found Item</h2>
		
		<jsp:include page="navbar.jsp"/>	
		
		<div class="container mt-5">
		
		<h2 class="mb-4">Search Item</h2>
		
			<div class="card bg-dark border-secondary">
			
				<div class="card-body">
				
					<form action="searchItem" method="get">
					
					<div class="mb-3">
					
					<label class="form-label">Item Name</label>		
					<input type="text" name="item_name" class="form-control" placeholder="Enter item name">
					
					</div>
					
					<button class="btn btn-info px-4">Search</button>
					
					</form>
				
				</div>
			
			</div>
		
		</div>
		
		<jsp:include page="footer.jsp"/>
	</body>

</html>