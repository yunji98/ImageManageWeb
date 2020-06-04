<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- c 태그 사용하기 위함 -->

<!-- =======================================================
    Theme Name: Avilon
    Theme URL: https://bootstrapmade.com/avilon-bootstrap-landing-page-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
<!--==========================
    Header
  ============================-->
<header id="header" style="background: #8AAC80;">
	<div class="container">
		<div id="logo" class="pull-left">
			<h1>
				<a href="<c:url value="/index"/>" class="scrollto">Picle</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="#intro"><img src="img/logo.png" alt="" title=""></a> -->
		</div>


		<nav id="nav-menu-container">
			<ul class="nav-menu">
				<li class="menu-active"><a href="<c:url value="/index"/>">홈</a></li>
				<c:if test="${pageContext.request.userPrincipal.name != null }">
					<li class="menu-has-children"><a href="#">사진</a>
						<ul>
							<li><a href="<c:url value="/metaView"/>">모든 사진</a></li>
							<li><a href="<c:url value="/autoTagView"/>">자동태그</a></li>
						</ul></li>
					<li class="menu-has-children"><a href="#">삭제추천</a>
						<ul>
							<li><a href="<c:url value="/darkedRecommend"/>">어두운사진</a></li>
							<li><a href="<c:url value="/shakenRecommend"/>">흔들린사진</a></li>
							<li><a href="<c:url value="/similarRecommend"/>">유사사진</a></li>
							<li><a href="<c:url value="/screenshotRecommend"/>">스크린샷</a></li>
						</ul></li>
					<li><a href="<c:url value="/trash"/>">휴지통</a></li>
					<li><a href="<c:url value="/logout"/>">로그아웃</a></li>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null }">
					<li><a href="<c:url value="/login"/>">로그인</a></li>
				</c:if>
			</ul>
		</nav>
		<!-- #nav-menu-container -->
	</div>
</header>
<!-- #header -->