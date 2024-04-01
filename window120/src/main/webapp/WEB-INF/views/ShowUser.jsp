<%@page import="kr.smhrd.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 1.request영역에 저장된 정보를 가져오시오. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://unpkg.com/98.css">
<style>
.tab-content {
	display: none;
}

.tab-content.active {
	display: block;
}

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
</head>
<style>
</style>
<body>
	
	<%
	  // 현재 날짜를 가져옵니다.
	  Date now = new Date();
	  // 현재 날짜를 yyyy-MM-dd 형식으로 포맷합니다.
	  String todayDate = new SimpleDateFormat("yyyy-MM-dd").format(now);
	%>
	<%
	List<Member> list = (List<Member>) request.getAttribute("list");
	String emailAttendanceCheck1 = (String) request.getAttribute("emailAttendanceCheck1");
    String emailAttendanceCheck2 = (String) request.getAttribute("emailAttendanceCheck2");
	%>
	<c:set var="todayDate" value="<%= todayDate %>" />
	
	<div class="window" style="height: 650px; width: 1280px;">
		<div class="title-bar">
			<div class="title-bar-text">학생 리스트</div>
			<div class="title-bar-controls">
				<button aria-label="Minimize"></button>
				<button aria-label="Maximize"></button>
				<button aria-label="Close" onclick="window.location.href='goMain'"></button>
			</div>
			</div>
			<div class="window tab-content" role="tabpanel" id="announce-tab"
			style="height: 630px; width: 1290px; top: 48.5%">
			<div class="window-body" style="position: fixed;">
				<div class="sunken-panel" style="height: 610px; width: 1270px;">
					<table class="interactive">
					<thead style="width: 100%;">
						<tr>
							<th style="width: 5%; font-size: 30px">No</th>
							<th style="width: 20%; font-size: 30px">아이디</th>
							<th style="width: 20%; font-size: 30px">이름</th>
							<th style="width: 20%; font-size: 30px">전화번호</th>
							<th style="width: 10%; font-size: 30px">구분</th>
							<th style="width: 10%; font-size: 30px">입실</th>
							<th style="width: 10%; font-size: 30px">퇴실</th>
						</tr>
					</thead>
					<tbody style="width:100%; height:600px;">
					    <% int count = 0; %>
					    <c:forEach items="${list}" var="m">
					        <c:if test="${m.rank_num == 0 || m.rank_num == 3}">
					            <tr>
					                <td><%= ++count %></td>
					                <td>${m.id}</td>
					                <td>${m.name}</td>
					                <td>${m.tel}</td>
					                <td>
					                    <c:choose>
					                        <c:when test="${m.rank_num == 0}">
					                            학생
					                        </c:when>
					                        <c:when test="${m.rank_num == 3}">
					                            팀장
					                        </c:when>
					                    </c:choose>
					                </td>
					                
					               
					                <td>
					                <c:forEach items="${att_list1 }" var="att1">
					                <c:choose>
					                	<c:when test='${fn:split(att1.in_time," ")[0] eq  todayDate && m.name eq att1.name }'>
					                		${fn:split(att1.in_time," ")[1] }
					                	</c:when>
					                	<c:otherwise></c:otherwise>
					                </c:choose>
					                </c:forEach>
					                </td>
					              	<td>
					                <c:forEach items="${att_list2 }" var="att2">
					                <c:choose>
					                	<c:when test='${fn:split(att2.out_time," ")[0] eq  todayDate && m.name eq att2.name }'>
					                		${fn:split(att2.out_time," ")[1]}
					                	</c:when>
					                	<c:otherwise></c:otherwise>
					                </c:choose>
					                </c:forEach>
					                </td>
					            </tr>
					        </c:if>
					    </c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	
	<!-- ------------------------------------------------------------------------- -->
	</div>
	</div>
	<!-- Scripts -->
	<script>
  document.querySelectorAll('table.interactive').forEach(element => {
    element.addEventListener('click', (event) => {
      const row = event.path.find(element => element.tagName === 'TR' && element.parentElement.tagName === 'TBODY');
      if (row) {
        row.classList.toggle('highlighted');
      }
    })
  });
</script>

	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="resources/assets/js/skel.min.js"></script>
	<script src="resources/assets/js/util.js"></script>
	<script src="resources/assets/js/main.js"></script>
</body>
</html>

