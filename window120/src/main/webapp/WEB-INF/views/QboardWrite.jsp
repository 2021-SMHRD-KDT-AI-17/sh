<%@page import="kr.smhrd.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://unpkg.com/98.css">
</head>
<body>

	<% Member loginMember = (Member)session.getAttribute("loginMember");  %>

	<div class="sunken-panel" id="board" style="height: 100%; width: 100%;">
		<form action="QbaordInsert" method="post" enctype="multipart/form-data">
			<table class="interactive" id="list" style="height: 100%; width: 100%;">
				<thead>
				<tr>
					<td>제목</td>
					<td><input type="text" name="qb_title"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" readonly value="${loginMember.name }"
						name="user_id"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td colspan="2"><input type="file" style="float: right;"
						name="qb_file"> <textarea rows="10" style="resize: none;"
							name="qb_content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="초기화"> <input type="submit" value="작성하기"></td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- Scripts -->
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="resources/assets/js/skel.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="resources/assets/js/main.js"></script>
</body>
</html>