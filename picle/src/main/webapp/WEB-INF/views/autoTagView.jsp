<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<!-- table section -->
	<div class="container">
		<h2>태그 별로 확인하기</h2>
		<p>태그 별 폴더를 확인하세요!</p>
		<table class="table table-striped">
			<tbody>
				<!-- controller에 있는 것과 item 변수 이름 같아야 돼! -->
				<c:forEach var="autoList" items="${autoList }">
					<tr>
						<td>${autoList.animal }</td>
						<td>${autoList.bag }</td>
						<td>${autoList.book }</td>
						<td>${autoList.device }</td>
						<td>${autoList.food }</td>
						<td>${autoList.furniture }</td>
						<td>${autoList.person }</td>
						<td>${autoList.plant }</td>
						<td>${autoList.sport }</td>
						<td>${autoList.things }</td>
						<td>${autoList.id }</td>
						<td>${autoList.title }</td>
						<td>${autoList.token }</td>
						<td><img src="<c:url value="${autoList.token }" />" alt ="image"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
