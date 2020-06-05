<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper" style="margin-top: 140px;">

	<div class="container">
		<center>
			<h2>Image Detail</h2>
			<p class="lead">Here is the detail information!</p>
		</center>

		<center>
			<div class="row" style="margin-left: 500px; margin-top:20px; margin-bottom:20px;">
				<div class="col-lg-6">
					<img src="<c:url value="${metaDetail.token}" />" alt="image"
						style="width: 380px; height: 380px;" />
					<div class="col-lg-6">
						<h3>${metaDetail.title}</h3>
						<p>${metaDetail.place}</p>
						<p>
							<strong>위도</strong> : ${metaDetail.latitude }
						</p>
						<p>
							<strong>경도</strong> : ${metaDetail.longitude }
						</p>
						
					</div>
				</div>
			</div>
		</center>
	</div>
</div>