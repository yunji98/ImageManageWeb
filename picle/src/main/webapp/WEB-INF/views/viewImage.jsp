<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper"
	style="margin-top: 140px; ">
	<div class="container">
		<center>
			<h2>Image Detail</h2>
			<p class="lead">Here is the detail information!</p>
			<div class="row">
				<div class="col-md-6">
					<img src="<c:url value="${metaDetail.token}" />" alt="image"
						style="width: 380px; height: 380px;" />
					<div class="col-md-6">
						<h3>title : ${metaDetail.title}</h3>
						<p>place : ${metaDetail.place}</p>
						<p>
							<strong>latitude</strong> : ${metaDetail.latitude }
						</p>
						<p>
							<strong>longitude</strong> : ${metaDetail.longitude }
						</p>
						<h3>path : ${metaDetail.path}</h3>
					</div>
				</div>
			</div>
		</center>

	</div>
</div>