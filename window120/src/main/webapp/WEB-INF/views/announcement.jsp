<%@page import="kr.smhrd.entity.Member"%>
<%@ page
 language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/98.css">
<style>
  .tab-content {
    display: none;
    z-index: 1;
  }

  .tab-content.active {
    display: block;
  }
.window-body {
    position: relative;
    width: 100%;
    height: 100%;
}
.window-body {
    position: relative; /* 부모 컨테이너를 상대적으로 설정합니다. */

}

.window-body > * {
    position: absolute; /* 자식 요소를 절대적으로 설정합니다. */
    /* 위치를 제어하기 위해 위, 왼쪽, 오른쪽 또는 아래와 같은 다른 위치 속성을 지정할 수도 있습니다. */
}

.tab-item {
    display: flex; /* 요소를 플렉스박스로 설정하여 내부 요소들을 수평으로 배치합니다. */
    align-items: center; /* 내부 요소들을 수직으로 중앙 정렬합니다. */
}

/* 이미지에 대한 스타일 */
.tab-item img {
    margin-right: 10px; /* 이미지와 텍스트 사이에 간격을 조정합니다. */
    margin-left: 10px;
    width: 30px;
}
</style>
<title>Insert title here</title>
</head>

<body>
   
   <%  Member loginMember = (Member)session.getAttribute("loginMember"); %>
	
	<div class="window" style="height: 730px; width: 1300px;">
	<menu role="tablist" class="multirows" style="height: 35px; width: 100%;">
   <li role="tab" aria-selected="true" class="tab-item">
    <img alt="" src="https://win98icons.alexmeub.com/icons/png/chm-2.png">
    <a href="#announce-tab" onclick="showTab('announce-tab')"style="font-size : 18px; margin-top : 10px;">공지사항</a>
   </li>
    <li role="tab" aria-selected="false" class="tab-item">
    <img alt="" src="https://win98icons.alexmeub.com/icons/png/address_book_pad_users.png">
    <a href="#event-tab" onclick="showTab('event-tab')" style="font-size : 18px; margin-top : 10px;">진행중인 이벤트</a></li>
    <li role="tab" aria-selected="false" class="tab-item">
    <img alt="" src="https://win98icons.alexmeub.com/icons/png/directory_open_file_mydocs-4.png">
    <a href="#map-tab" onclick="showTab('map-tab')" style="font-size : 18px; margin-top : 10px;">찾아오시는 길</a></li>
  </menu>

  <div class="window tab-content" role="tabpanel" id="announce-tab" style="height: 600px; width: 987px;">
    <div class="window-body" style="position: fixed;">
        <div class="sunken-panel" style="height: 580px; width: 970px;">
            <table class="interactive">
                <thead>
                    <tr>
                        <th style="width: 7%; font-size:20px">번호</th>
                        <th style="width: 60%; font-size:20px">제목</th>
                        <th style="width: 20%; font-size:20px">작성자</th>
                        <th style="width: 15%; font-size:20px">작성일</th>
                    </tr>
                </thead>
                <tbody style="font-size:20px">
					<c:forEach items="${a_list}" var="a" varStatus="s">
						<tr>
							<td>${s.count }</td>
							<td><a href="annDetail?ann_idx=${a.ann_idx }">${a.ann_title }</a></td>
							<td>${a.teacher_id }</td>
							<td>${a.ann_dt}</td>
						</tr>
					</c:forEach>
				</tbody>
            </table>
      <img alt="" src="resources/assets/images/smhrd1.png" style="width: 100%;">
        </div>
    </div>
</div>
<div class="window tab-content" role="tabpanel" id="event-tab" style="height: 100%; width: 100%;">
    <div class="window-body" >
        <div class="sunken-panel" style="height: 100%; width: 100%;">
            
        </div>
    </div>
</div>
<div class="window tab-content" role="tabpanel" id="map-tab" style="height: 100%; width: 100%;">
    <div class="window-body" >
        <div class="sunken-panel" style="height: 100%; width: 100%;">
            
        </div>
    </div>
</div>
  </div>
<script>
document.addEventListener("DOMContentLoaded", function() {
  // 모든 탭의 aria-selected 속성을 false로 변경
  var tabs = document.querySelectorAll('[role="tab"]');
  tabs.forEach(function(tab) {
    tab.setAttribute('aria-selected', 'false');
  });
  // 질문 게시판 탭의 aria-selected 속성을 true로 변경
  var QuestionTab = document.querySelector('[href="#announce-tab"]');
  QuestionTab.parentNode.setAttribute('aria-selected', 'true');

  // 질문 게시판 탭 컨텐츠를 활성화
  var QuestionTabContent = document.getElementById('announce-tab');
  QuestionTabContent.classList.add('active');

});

function showTab(tabId) {
  // 모든 탭 컨텐츠 숨기기
  var tabContents = document.querySelectorAll('.tab-content');
  tabContents.forEach(function(content) {
    content.classList.remove('active');
  });

  // 클릭된 탭 컨텐츠 표시
  var selectedTabContent = document.getElementById(tabId);
  selectedTabContent.classList.add('active');

  // 모든 탭의 aria-selected 속성을 false로 변경
  var tabs = document.querySelectorAll('[role="tab"]');
  tabs.forEach(function(tab) {
    tab.setAttribute('aria-selected', 'false');
  });

  // 클릭된 탭의 aria-selected 속성을 true로 변경
  var clickedTab = document.querySelector('[href="#' + tabId + '"]');
  clickedTab.parentNode.setAttribute('aria-selected', 'true');
}
</script>
	<script src="resources/assets/js/jquery-3.7.1.min.js"></script>
</body>
</html>