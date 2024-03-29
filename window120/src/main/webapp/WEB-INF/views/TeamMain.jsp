<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<table>
			<tr>
				<td>팀 번호</td
				<td>팀 이름</td>
				<td>참가여부</td>
				<td>입장하기</td>
			</tr>
				<c:forEach items="${t_list }" var="t" varStatus="s">
                     <tr>
                        <td>${s.count }</td>
                        <td>${t.team_name }</td>
                        <td><button onclick="location.href='participateTeam?team_number=${t.team_number}'">팀참가</button></td>
                        <td><button onclick="location.href='goTeamDetail?team_number=${t.team_number}'">입장</button></td>
                     </tr>
                  </c:forEach>
			<td colspan="4"><button onclick="location.href='goMakeTeam'">팀 생성</button><td>
		</table>

</body>
</html>