<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!-- ..................................................................................................... -->
<div class="container-wrapper">
	<!-- table section -->
	<div class="container-d">
		<h2>AutoTagDetail</h2>
		<p>태그 별 사진보기</p>
		<br>


		<table class="table">
			<tbody>
				<tr>
					<c:forEach var="autoList" items="${autoList }" varStatus="status">
						<c:if test="${status.index % 4 == 0 }">
				</tr>
				<tr>
					</c:if>
					<td><img src="<c:url value="${autoList.token }" />"
						alt="image" style="width: 200px; height: 200px;" /></td>
					</c:forEach>
				</tr>
			</tbody>


		</table>
	</div>
</div>

<!-- ..................................................................................................... -->