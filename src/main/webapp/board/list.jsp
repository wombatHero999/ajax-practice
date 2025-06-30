<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 게시글 목록 페이지 -->
<h2>일반게시판</h2>
<table class='list-table'>
	<thead>
		<tr>
			<th style="width: 10%">번호</th>
			<th style="width: 40%">제목</th>
			<th style="width: 20%">작성자</th>
			<th style="width: 30%">작성일</th>
		</tr>
	</thead>
	<tbody>
		<!-- 반복문으로 등록된 게시글들를 출력하는곳입니다. -->
		<c:forEach var="board" items="${list}">
			<tr onclick="displayData(${board.no})">
				<td>${board.no }</td>
				<td>${board.title }</td>
				<td>${board.nickname }</td>
				<td><fmt:formatDate value="${board.createDate }"
				pattern="yyyy-MM-dd"/></td>
			</tr>
		</c:forEach>
	</tbody>
</table>




