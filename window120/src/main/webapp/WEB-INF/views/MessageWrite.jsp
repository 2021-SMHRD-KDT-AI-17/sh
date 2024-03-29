<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="SendAdminMessage" method="post">
		<table>
			<tr>
				<td>작성자</td>
				<td><input type="text" readlonly value="${loginMember.id }" name="user_id"></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
				<input type="radio" name="catagory" value="건의사항">건의사항
				<input type="radio" name="catagory" value="권한요청">권한요청
				</td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td><input type="text" name="message_title"></td>
			</tr>
			
			<tr>
				<td colspan="2">내용</td>
			</tr>
			<tr>
				<td colspan="2"><textarea style="width:100%; height: 100px; font-size:20px;" rows="6" name="message"></textarea></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		
		</table>
	
	</form>


</body>
</html>