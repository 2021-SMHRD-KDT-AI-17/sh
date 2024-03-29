<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>작성자</td>
			<td>${message.user_id }</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${message.message_title }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${message.message }</td>
		</tr>
	</table>
	<button onclick="location.href='goMessage'">뒤로가기</button>
</body>
</html>