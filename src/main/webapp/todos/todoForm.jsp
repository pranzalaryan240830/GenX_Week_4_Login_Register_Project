<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Todo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.log{
	margin:1rem 2rem;
	box-shadow:
  0 2.8px 2.2px rgba(0, 0, 0, 0.034),
  0 6.7px 5.3px rgba(0, 0, 0, 0.048),
  0 12.5px 10px rgba(0, 0, 0, 0.06),
  0 22.3px 17.9px rgba(0, 0, 0, 0.072),
  0 41.8px 33.4px rgba(0, 0, 0, 0.086),
  0 100px 80px rgba(0, 0, 0, 0.12)
;
	background-color: white;
	border-radius: 10px;
	padding: 3rem 5rem;
}
</style>

</head>
<body>
<navbar>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
      <a class="navbar-brand" href="https://gen-xt.com">
      <img src="helper/alphabet.png" alt="Logo" width="30px" height="30px" class="d-inline-block align-text-middle">
      GenX | Employee Portal
      </a>
    </div>
	<ul class="navbar-nav text-light">
		<li><a href="<%=request.getContextPath()%>/list" class="nav-link">Product</a></li>
	</ul>
	<ul class="navbar-nav text-light navbar-collapse justify-content-end">
		<li><a href="<%=request.getContextPath()%>/logout" class="nav-link">Logout</a></li>
	</ul>
</nav>
</navbar>
	
	<div class="container col-md-5 my-3">
		<div class="card">
			<div class="card-body">
				<c:if test="${todo != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${todo == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${todo != null}">
            			Edit Product
            		</c:if>
						<c:if test="${todo == null}">
            			Add New Product
            		</c:if>
					</h2>
				</caption>

				<c:if test="${todo != null}">
					<input type="hidden" name="id" value="<c:out value='${todo.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Product Title</label> <input type="text"
						value="<c:out value='${todo.title}' />" class="form-control"
						name="title" required="required" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Product Decription</label> <input type="text"
						value="<c:out value='${todo.description}' />" class="form-control"
						name="description" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Product Status</label> 
					<select class="form-control" name="isDone">
						<option value="false">In Progress</option>
						<option value="true">Complete</option>
					</select>
				</fieldset>

				<fieldset class="form-group">
					<label>Product Target Date</label> <input type="date"
						value="<c:out value='${todo.targetDate}' />" class="form-control"
						name="targetDate" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Add</button>
			</form>
			</div>
		</div>
	</div>

</body>
</html>