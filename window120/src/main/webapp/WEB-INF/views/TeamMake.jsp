<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="teamMake" method="post">
		<table>
			<tr>
				<td>팀 이름</td>
				<td><input type="text" name="team_name"></td>
			</tr>
			<tr>
				<td>공유 GitHub 주소</td>
				<td><input type="text" name="team_Git"></td>
			</tr>
		</table>
		
		<input type="submit" value="만들기">
	</form>
</body>
</html>