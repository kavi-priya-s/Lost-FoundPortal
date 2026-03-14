<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Add Item</title>

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
		
		<div class="container mt-5">
		
		<h2 class="mb-4">Add Lost / Found Item</h2>
		
		<div class="card">
		
		<div class="card-body">
		
		<form action="saveItem" method="post">
		
		<div class="mb-3">
		<label class="form-label">Item Name</label>
		<input type="text" name="item_name" class="form-control">
		</div>
		
		<div class="mb-3">
		<label class="form-label">Description</label>
		<input type="text" name="description" class="form-control">
		</div>
		
		<div class="mb-3">
		<label class="form-label">Location</label>
		<input type="text" name="location" class="form-control">
		</div>
		
		<div class="mb-3">
		<label class="form-label">Status</label>
		
		<select name="status" class="form-select">
		
		<option value="Lost">Lost</option>
		<option value="Found">Found</option>
		
		</select>
		
		</div>
		
		<div class="mb-3">
		<label class="form-label">Contact</label>
		<input type="text" name="contact" class="form-control">
		</div>
		
		<button type="submit" class="btn btn-primary px-4 mt-3">
		Save Item
		</button>
		
		</form>
		
		</div>
		
		</div>
		
		</div>
		
		<jsp:include page="footer.jsp"/>
	</body>
</html>