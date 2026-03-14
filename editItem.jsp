<%@ page contentType="text/html; charset=UTF-8" %>

<html>
	<head>
		<title> Edit Item </title>
		
		<link rel="stylesheet" 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
	
		<link rel = "stylesheet"
		href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
		
		<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap">
		
		<link rel = "stylesheet" href = "css/style.css">
		
	</head>

	<body class = "bg-dark text-light">
		<h2> Edit Item </h2>
		<jsp:include page="navbar.jsp"/>
		
		<div class="container mt-5">
		
		<h2 class="mb-4">Edit Item</h2>
		
		<div class="card">
		
		<div class="card-body">
		
		<form action="updateItem" method="post">
		
		<input type="hidden" name="id" value="${item.id}">
		
		<div class="mb-3">
		
		<label class="form-label">Item Name</label>
		
		<input type="text" name="item_name" class="form-control" value="${item.item_name}">
		
		</div>
		
		<div class="mb-3">
		
		<label class="form-label">Description</label>
		
		<input type="text" name="description" class="form-control" value="${item.description}">
		
		</div>
		
		<div class="mb-3">
		
		<label class="form-label">Location</label>
		
		<input type="text" name="location" class="form-control" value="${item.location}">
		
		</div>
		
		<div class="mb-3">
		
		<label class="form-label">Status</label>
		
		<select name="status" class="form-select">
		
		<option value="Lost">Lost</option>
		<option value="Found">Found</option>
		<option value="Returned">Returned</option>
		
		</select>
		
		</div>
		
		<div class="mb-3">
		
		<label class="form-label">Contact</label>
		
		<input type="text" name="contact" class="form-control" value="${item.contact}">
		
		</div>
		
		<button type="submit" class="btn btn-info px-4">
		
		Update Item
		
		</button>
		
		</form>
		
		</div>
		
		</div>
		
		</div>
		
		<!-- FOOTER -->
		<footer class="text-center text-secondary mt-5 mb-3">
		
		<hr style="border-color:#444">
		
		<p>© 2026 Lost & Found Portal</p>
		
		</footer>

		<jsp:include page="footer.jsp"/>
	 </body>
 </html>