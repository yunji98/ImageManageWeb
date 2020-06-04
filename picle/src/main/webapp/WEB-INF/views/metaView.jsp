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
							<a href="<c:url value="/viewImage/${metaList.upload } "/>">
								<img src="<c:url value="${metaList.token }" />" alt="image" style="width: 200px; height: 200px;" />
							</a>
						</td>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
</div>
