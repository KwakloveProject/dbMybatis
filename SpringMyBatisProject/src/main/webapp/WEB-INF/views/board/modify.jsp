<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBatis 게시판</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		var formObj = $("#board");

		$("#btnModify").on("click", function() {
			formObj.attr("action", "/board/modify");
			formObj.attr("method", "post");
			formObj.submit();
		});

		$("#btnList").on("click", function() {
			self.location = "/board/list";
		});

	});
</script>
</head>
<body>
	<h2>회원정보 수정</h2>
	<form:form modelAttribute="board" action="modify">
		<form:hidden path="boardNo" />
		<table>
			<tr>

				<td>아이디</td>
				<td><form:input path="title" /></td>
				<td><font color="red"><form:errors path="title" /></font></td>

			</tr>
			<tr>

				<td>이름</td>
				<td><form:input path="writer" /></td>
				<td><font color="red"><form:errors path="writer" /></font></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><form:textarea path="content" /></td>
				<td><font color="red"><form:errors path="content" /></font></td>
			</tr>
		</table>
	</form:form>
	<div>

		<button type="submit" id="btnModify">수정</button>
		<button type="submit" id="btnList">회원 목록</button>

	</div>
</body>
</html>
