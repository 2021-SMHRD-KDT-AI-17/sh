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
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
		</tr>
		<c:forEach items="${teamU_list }" var="list" varStatus="s">
               <tr>
                  <td>${list.name }</td>
                  <td>${list.tel }</td>
                  <td>${list.email }</td>
               </tr>
        </c:forEach>
	</table>
	
	<table>
		<tr>
			<td>양식 다운로드</td>
			<td><a href="resources/image/팀할일.xlsx" download>팀 할일 템플릿</td>
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
	
	<c:if test="${loginMember.team_number eq team.team_number}">
	<button onclick="location.href='goTeamUpdate?team_number=${team.team_number}'">정보수정</button>
	</c:if>
	<button onclick="location.href='goTeamMain'">뒤로가기</button>


</body>
</html>