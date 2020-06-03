<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<!-- table section -->
	<div class="container">
		<h2>모든 사진</h2>
		<p>모든 사진을 확인하세요!</p>
		<table class="table">
			<tbody>
				<tr>
					<c:forEach var="metaList" items="${metaList }" varStatus="status">
						<c:if test="${status.index % 4 == 0 }">
						</tr><tr>
						</c:if>
						<td>
							<a href="<c:url value="/viewImage/${metaList.title } "/>">
								<img src="<c:url value="${metaList.token }" />" alt="image" style="width: 200px; height: 200px;" />
							</a>
						</td>
					</c:forEach>
				</tr>
			</tbody>
			
			<%-- <tbody style="margin-top:20px;">
				<tr>
					<td><img src="<c:url value="/resources/img/dark1.jpg"/>" alt="image" style="width:200px; height:200px;"/></td>
					<td><img src="<c:url value="/resources/img/dog1.jpg"/>" alt="image" style="width:200px; height:200px;"/></td>
					<td><img src="<c:url value="/resources/img/mouse1.jpg"/>" alt="image" style="width:200px; height:200px;"/></td>
					<td><img src="<c:url value="/resources/img/notebook1.jpg"/>" alt="image" style="width:200px; height:200px;"/></td>
				</tr>
				<tr>
					<td><img src="<c:url value="/resources/img/person1.jpg"/>" alt="image" style="width:200px; height:200px;"/></td>
					<td><img src="<c:url value="/resources/img/plant1.jpg"/>" alt="image" style="width:200px; height:200px;"/></td>
				</tr>
			</tbody> --%>
		</table>
	</div>
</div>
