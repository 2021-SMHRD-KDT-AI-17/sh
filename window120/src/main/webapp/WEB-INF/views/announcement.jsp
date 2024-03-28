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
<title>Insert title here</title>
</head>

<body>
   
   <%  Member loginMember = (Member)session.getAttribute("loginMember"); %>

   <div id="announcement">
   <table>
      <th>공지사항</th>
      <tr>
         <td>공지번호</td>
         <td>제목</td>
         <td>작성자</td>
         <td>작성시간</td>
      </tr>
      
      <c:forEach items="${a_list}" var="a" varStatus="s">
      <tr>
         <td>${s.count }</td>
         <td><a href="annDetail?ann_idx=${a.ann_idx }">${a.ann_title }</a></td>
         <td>${a.teacher_id }</td>
         <td>${a.ann_dt}</td>
      </tr>
      </c:forEach>
   </table>
      <%-- <c:if test=${loginMember.rank_num eq '1' }
      <a href="goAnnouncementWrite"><button id="writer">작성하러가기</button></a>
      </c:if> --%>
   </div>
   
   <%if (loginMember.getRank_num() == 1){ %>
   
      <a href="goAnnouncementWrite"><button id="writer">작성하러가기</button></a>
   <% }%>
   
   
</body>
</html>