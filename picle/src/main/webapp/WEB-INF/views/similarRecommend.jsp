<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<!-- table section -->
	<div class="container">
		<h2>All similar</h2>
		<p>테스트</p>
		<table class="table table-striped">
			<tbody>
				<tr>
					<c:forEach var="similarList" items="${similarList }" varStatus="status">
						<c:if test="${status.index%4 == 0 }">
						</tr><tr>
						</c:if>
						<td>
							<a href="<c:url value="/viewImage/${similarList.title } "/>">
								<img src="<c:url value="${similarList.token }" />" alt="image" style="width: 200px; height: 200px;" />
							</a>
						</td>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
</div>
