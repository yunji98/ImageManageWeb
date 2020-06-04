<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<!-- table section -->
	<div class="container">
		<h2>태그 별로 확인하기</h2>
		<p>태그 별 폴더를 확인하세요!</p>
		<br>
		<table style="border-spacing: 20px;">
			<tr>
				<td>
					<p>
					<a href="<c:url value="/metaView"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp모든사진
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/animal"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp동물
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/bag"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp가방
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/book"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp책
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/device"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp장치
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/food"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp음식
							</a>
					</p>
				<td/>
				</tr>
				<tr>
				<td>
					<p>
					<a href="<c:url value="/detailTagView/furniture"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp가구
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/person"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp사람
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/plant"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp식물
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/sport"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp스포츠
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/things"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp잡동사니
							</a>
					</p>
					<p>
					<a href="<c:url value="/detailTagView/traffic"/>">
						<img src="<c:url value="/resources/img/folder.png" />" alt="image"
							width="85%" height="120" /> <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp교통
							</a>
					</p>

				<td/>
				
			<tr>
		</table>
	</div>
</div>
