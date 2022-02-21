<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todos List</title>
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
		<li><a href="<%=request.getContextPath()%>/list" class="nav-link">List</a></li>
	</ul>
	<ul class="navbar-nav navbar-collapse justify-content-end text-light">
		<li><a href="<%=request.getContextPath()%>/logout" class="nav-link">Logout</a></li>
	</ul>
</nav>
</navbar>
	<div class="row">
		
		<div class="container">
			<h3 class="text-center">List of Product</h3>
			<hr>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new"
					class="btn btn-success">Add Product</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Title</th>
						<th>Target Date</th>
						<th>Product Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="todo" items="${listTodo}">
						<tr>
							<td><c:out value="${todo.title}" /></td>
							<td><c:out value="${todo.targetDate}" /></td>
							<td><c:out value="${todo.status}" /></td>

							<td><a href="edit?id=<c:out value='${todo.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${todo.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

<jsp:include page="../helper/footer.jsp"></jsp:include>
</body>
</html>