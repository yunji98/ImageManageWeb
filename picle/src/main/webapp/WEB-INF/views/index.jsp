<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--==========================
    Intro Section
  ============================-->
<section id="intro">
	<div class="intro-text">
		<h2>Welcome to Picle</h2>
		<p>The best Cloud Picle</p>
		<a href="<c:url value="/metaView"/>" class="btn-get-started scrollto">Get Started</a>
	</div>
	<div class="product-screens">
		<div class="product-screen-1 wow fadeInUp" data-wow-delay="0.4s"
			data-wow-duration="0.6s">
			<img src="resources/img/screen1.jpg" alt="" style="height:600px;width:310px;">
		</div>
		<div class="product-screen-2 wow fadeInUp" data-wow-delay="0.2s"
			data-wow-duration="0.6s">
			<img src="resources/img/screen2.jpg" alt="" style="height:600px;width:310px;">
		</div>
		<div class="product-screen-3 wow fadeInUp" data-wow-duration="0.6s">
			<img src="resources/img/screen3.png" alt="" style="height:600px; width:310px;">
		</div>
	</div>
</section>

<!-- #intro -->
<main id="main">
	<!--==========================
      Our Team Section
    ============================-->
	<section id="team" class="section-bg">
		<div class="container">
			<div class="section-header">
				<h3 class="section-title">Our Team</h3>
				<span class="section-divider"></span>
				<p class="section-description">우리팀은 센세이션.</p>
			</div>
			<div class="row wow fadeInUp">
				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="resources/img/team/team-1.jpg" alt="">
						</div>
						<h4>김민지</h4>
						<span>Chief Executive Officer</span>
						<div class="social">
							<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
								class="fa fa-facebook"></i></a> <a href=""><i
								class="fa fa-google-plus"></i></a> <a href=""><i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="resources/img/team/team-2.jpg" alt="">
						</div>
						<h4>노윤지</h4>
						<span>Product Manager</span>
						<div class="social">
							<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
								class="fa fa-facebook"></i></a> <a href=""><i
								class="fa fa-google-plus"></i></a> <a href=""><i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="resources/img/team/team-3.jpg" alt="">
						</div>
						<h4>박주영</h4>
						<span>CTO</span>
						<div class="social">
							<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
								class="fa fa-facebook"></i></a> <a href=""><i
								class="fa fa-google-plus"></i></a> <a href=""><i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="resources/img/team/team-4.jpg" alt="">
						</div>
						<h4>정윤하</h4>
						<span>Accountant</span>
						<div class="social">
							<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
								class="fa fa-facebook"></i></a> <a href=""><i
								class="fa fa-google-plus"></i></a> <a href=""><i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- #team -->
</main>
