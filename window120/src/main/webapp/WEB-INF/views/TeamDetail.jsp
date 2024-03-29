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
			<td>팀원 이름</td>
			<td>팀원 전화번호</td>
			<td>팀원 이메일</td>
		</tr>
			<c:forEach items="${teamU_list }" var="tu" begin="0" end="${t_size }" step="1" varStatus="s">
                <tr>
                   <td>${tu.name }</td>
                   <td>${tu.tel }</td>
                   <td>${tu.email }</td>
                </tr>
             </c:forEach>
	</table>
	
	<table>
		<tr>
			<td>양식 다운로드</td>
			<td></td>
		</tr>
		<tr>
			<td>GitHub 주소</td>
			<td>${team.team_Git }</td>
		</tr>
		<tr>
			<td>URL 주소</td>
			<td>${team.team_URL }</td>
		</tr>
	</table>
	<button onclick="location.href='goTeamUpdate?team_number=${team.team_number}'">정보수정</button>

</body>
</html>