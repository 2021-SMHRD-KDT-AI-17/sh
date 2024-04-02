<%@page import="kr.smhrd.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/98.css">
<style type="text/css">
.window {
	width: 300px;
	height: auto;
	position: fixed;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.window-body {
	position: relative; /* 부모 컨테이너를 상대적으로 설정합니다. */
}

.window-body>* {
	position: absolute; /* 자식 요소를 절대적으로 설정합니다. */
	/* 위치를 제어하기 위해 위, 왼쪽, 오른쪽 또는 아래와 같은 다른 위치 속성을 지정할 수도 있습니다. */
}
</style>
<title>Insert title here</title>
</head>
<body>

	<%
	Member loginMember = (Member) session.getAttribute("loginMember");
	%>
	<form action="announcementInsert" method="post">
		<div class="window" style="height: 650px; width: 1280px;">
			<div class="window tab-content" role="tabpanel"
				style="height: 630px; width: 1290px; top: 48.5%">
				<div class="window-body" style="position: fixed;">
					<div class="sunken-panel" style="height: 610px; width: 1270px;">
						<table style="width: 100%;" class="interactive">
							<thead style="width: 100%;">
								<th>공지사항</th>
								<tr>
									<td>제목</td>
									<td><input type="text" name="title"></td>
								</tr>
								<tr>
									<td>작성자</td>
									<td><input readonly type="text" name="writer"
										value="<%=loginMember.getId()%>"></td>
								</tr>
								<tr>
									<td>내용</td>
								</tr>
							</thead>
							<tbody>
							<tr>
							<td><textarea type="text" name="content"></td>
							</tr>
							</tbody>
							<tr>
									<td colspan="2"><input type="submit" value="작성"></td>
								</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>