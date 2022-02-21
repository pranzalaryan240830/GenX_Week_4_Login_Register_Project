<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Register Employee</title>
<style type="text/css">
.abc{
	background-color: rgb(244,244,244);
}
</style>
</head>
<body>
	<jsp:include page="../helper/header.jsp"></jsp:include>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>
	<p class="display-5 my-1 text-center">Join Us today!</p>
	<div class = "d-lg-flex flex-row my-3 justify-content-evenly align-items-center abc">
	<div class="row mb-3 g-3">
	<div class="alert alert-success d-flex align-items-center" role="alert">
  	<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  	<div>   <p>${NOTIFICATION}</p>  </div>
	</div>
	</div>
	
	<form class="my-2 border-2 border-end px-5 py-2" action="<%=request.getContextPath()%>/register" method="post">
	<div class="row mb-3 g-3">
  		<div class="col">
  	    	<label for="fname" class="form-label">Name</label>
    		<input type="text" class="form-control" name="firstName" id="fname" placeholder="First name" aria-label="First name" required>
  		</div>
  		<div class="col">
  			<label for="lname" class="form-label">&nbsp;</label>
    		<input type="text" class="form-control" name="lastName" id="lname" placeholder="Last name (Optional)" aria-label="Last name">
  		</div>
	</div>
  	<div class="mb-3">
	    <label for="exampleInputEmail1" class="form-label">Email</label>
    	<input type="email" name="email" class="form-control" name="email" placeholder="john.doe@xyz.com" id="exampleInputEmail1" aria-describedby="emailHelp" required>
    	<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  	</div>
  	<div class="mb-3">
    	<label for="exampleInputPassword1" class="form-label">Password</label>
    	<input type="password" name="pass" class="form-control" id="exampleInputPassword1" required>
  	</div>
  	<div class="mb-3">
    	<label for="exampleInputPassword2" class="form-label">Confirm Password</label>
    	<input type="password" name="cpass" class="form-control" id="exampleInputPassword2" required>
  	</div>
  	<button type="submit" class="btn btn-primary">Register</button><br/>
  	<span>Already Registered?</span>
  	<button type="button" class="btn btn-outline-primary" onclick="window.location='<%=request.getContextPath()%>/login'" class="link-primary mx-1">Login</button>
</form>
<img src="register/reg.png" style="display:block" height="auto" width="auto"/>
	</div>
	
	<jsp:include page="../helper/footer.jsp"></jsp:include>
</body>
</html>