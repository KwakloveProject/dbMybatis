<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JPA 게시판</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var formObj = $("#board");
		console.log(formObj);
		$("#btnModify").on("click", function() {
			var boardNo = $("#boardNo");
			var boardNoVal = boardNo.val();

			self.location = "/board/modify?boardNo=" + boardNoVal;
		});

		$("#btnRemove").on("click", function() {
			formObj.attr("action", "/board/remove");
			formObj.submit();
		});

		$("#btnList").on("click", function() {
			self.location = "/board/list";
		});

	});
</script>
</head>
<body>
	<h2>회원 목록</h2>
	<form:form modelAttribute="board">
		<form:hidden path="boardNo" />
		<table>
			<tr>
				<td>아이디</td>
				<td><form:input path="title" readonly="true" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><form:input path="writer" readonly="true" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><form:input path="content" readonly="true" /></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnModify">수정</button>
		<button type="submit" id="btnRemove">삭제</button>
		<button type="submit" id="btnList">회원목록</button>
	</div>
</body>
</html>
