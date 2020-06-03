<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<div class="container">
		<h1>Image Detail</h1>
		<p class="lead">Here is the detail information!</p>

		<div class="row">
			<div class="col-md-6">
				<img
					src="<c:url value="${metaView.token}" />"
					alt="image" style="width: 80%" />
			</div>

			<div class="col-md-6">
				<h3>title : ${metaView.title}</h3>
				<p>place : ${metaView.place}</p>
				<p>
					<strong>latitude</strong> : ${metaView.latitude }
				</p>
				<p>
					<strong>longitude</strong> : ${metaView.longitude }
				</p>
				<h3>path : ${metaView.path}</h3>
			</div>
		</div>
	</div>
</div>

