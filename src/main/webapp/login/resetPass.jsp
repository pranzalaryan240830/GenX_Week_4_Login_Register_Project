<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Reset Password</title>
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
<jsp:include page="../helper/header.jsp"></jsp:include>
	<div class = "d-xl-flex my-1 justify-content-evenly align-items-center bg-light">
	<form class="log mb-3 mx-0 my-2" action="<%=request.getContextPath()%>/reset" method="post">
	<div>  
	<p class="display-5 mb-5 text-center">Reset Password</p>
	</div>
	<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label fs-4">Welcome,</label>
    <input type="email" name="username" class="form-control form-control-lg" id="exampleInputEmail1" value="${USER}" aria-describedby="emailHelp" readonly>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Create New Password</label>
    <input type="password" name="npass" class="form-control form-control-lg" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword2" class="form-label">Re-enter New Password</label>
    <input type="password" name="cpass" class="form-control form-control-lg" id="exampleInputPassword2">
  </div>
  <div style="user-select:none"><p class="font-monospace text-danger"> ${ALERT}</p>  </div>
  <button type="submit" class="btn btn-outline-primary">Reset Password</button>
  <button type="button" onClick="location.href='<%=request.getContextPath()%>/login'" class="btn btn-outline-danger">Cancel</button>
  
	</form>
	</div>
</body>
</html>