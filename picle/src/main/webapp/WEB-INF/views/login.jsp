<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.btn-submit {
	background-color: #8AAC80;
	border: none;
}

.btn-submit:hover {
	background-color: #6C8E62;
	color: #FFFFFF;
}
</style>
<!-- Custom styles for this template -->
<!--<link href="signin.css" rel="stylesheet"> -->

<div class="text-center">
	<div class="container-wrapper">
		<!-- table section -->
		<div class="container">
			<h2>Login</h2>
			<form class="form-signin" method="post"
				action="<c:url value="/login"/>">
				
				<c:if test="${not empty logoutMsg}">
					<div style="color: #0000ff">
						<h4>${logoutMsg}</h4>
					</div>
				</c:if>
				<c:if test="${not empty errorMsg}">
					<div style="color: #ff0000">
						<h4>${errorMsg}</h4>
					</div>
				</c:if>

				<label for="inputEmail" class="sr-only">Email address</label> <input
					type="email" id="inputEmail" name="username" class="form-control"
					placeholder="Email address" required autofocus> <label
					for="inputPassword" class="sr-only">Password</label> <input
					type="password" id="inputPassword" name="password"
					class="form-control" placeholder="Password" required>
				<div class="checkbox mb-3">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				
				<button class="btn btn-lg btn-block btn-submit" type="submit">Sign
					in</button>
			</form>
		</div>
	</div>
</div>