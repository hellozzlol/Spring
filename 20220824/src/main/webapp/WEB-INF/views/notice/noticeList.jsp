<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항리스트</h1>
	<article>
		<div class="container">
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th>NO</th>
							<th>작성자</th>
							<th>글제목</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>

					<tbody>


						<c:forEach items="${notices }" var="n">
							<tr>
								<td>${n.notice_id}</td>
								<td>${n.notice_writer}</td>
								<td>${n.notice_title}</td>
								<td>${n.notice_date}</td>
								<td>${n.notice_hit}</td>
							</tr>
						</c:forEach>


					</tbody>




				</table>
					<a href="noticeForm.do">글 등록</a>
			</div>
		</div>
	</article>

</body>
</html>