<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="resources/assetsBoard/css/main.css" />
		<link rel="stylesheet" href="resources/assetsBoard/css/board.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>
			<div id = "board">
				<form action="QboardUpdate?qb_idx=${qboard.qb_idx }" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>제목</td>
						<td><input type="text" name="qb_title" value="${qboard.qb_title }"> </td>
					</tr>
					
					<tr>
						<td>작성자</td>
						<td><input  type="text" name="user_id" readonly value="${qboard.user_id }"> </td>
					</tr>
					
					<tr>
						<td colspan="2">내용</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input  type="file" style="float: right;" name="qb_file">
							<textarea  rows="10" style="resize: none;" name="qb_content" >${qboard.qb_content } </textarea>			
						</td>
					</tr>
					
					
				</table>
					<input type="submit" value="UPDATE" class="button fit" >
				
				
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