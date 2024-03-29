<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/98.css">
<title>Insert title here</title>
</head>
<body>
<div class="window" style="height: 730px; width: 1300px;">

<div class="window-body" style="height:80%">
<div class="window tab-content" role="tabpanel" id="Question-tab" style="height: 600px; width: 987px; margin-left:130px;  margin-top:40px;">
    <div class="window-body" >
        <div class="sunken-panel" style="height: 580px; width: 970px;">
		<table>
			<thead style="width:100%;">
			<tr>
				<th style="width:5%;">팀 번호</th>
				<th style="width:60%;">팀 이름</th>
				<th style="width:15%;">참가여부</th>
				<th style="width:15%;">입장하기</th>
			</tr>
			<tbody>
				<c:forEach items="${t_list }" var="t" varStatus="s">
                     <tr>
                        <td>${s.count }</td>
                        <td>${t.team_name }</td>
                        <td><button style="margin-left:15%" onclick="location.href='participateTeam?team_number=${t.team_number}'">팀참가</button></td>
                        <td><button style="margin-left:15%" onclick="location.href='goTeamDetail?team_number=${t.team_number}'">입장</button></td>
                     </tr>
                  </c:forEach>
                  </tbody>
			<td colspan="4"><button onclick="location.href='goMakeTeam'">팀 생성</button><td>
		</table>
		</div>
		</div>
		</div>
</div>
</div>
</body>
</html>