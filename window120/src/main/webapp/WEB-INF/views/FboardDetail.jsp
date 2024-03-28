<%@page import="kr.smhrd.entity.FboardComment"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <title>Forty by HTML5 UP</title>
      <meta charset="utf-8" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://unpkg.com/98.css">
</head>

<body>

   <% 
      Member loginMember = (Member)session.getAttribute("loginMember"); 
      List<FboardComment> fbc_list = (List<FboardComment>)session.getAttribute("fbc_list");
   %>
         <!-- Q19. 게시글 세부내용 조회 기능 -->
   <div class="sunken-panel" id="board" style="height: 100%; width: 100%;">
      <table class="interactive" id="list" style="height: 100%; width: 100%;">
         <tr>
         <thead style="font-size: 23px;">
            <th style="width:20%">제목</th>
            <td>${fboard.fb_title }</td>
            </tr>
            <tr>
               <th style="width:20%">작성자</th>
               <td>${fboard.user_id }</td>
            </tr>

            <!-- 다운로드 -->
            <tr>
               <th>다운로드</th>
               <td><a href="resources/image/${fboard.fb_file }" download>${fboard.fb_file }</a></td>
            </tr>
            <tr>
               <th colspan="2">내용</th>
            </tr>
         </thead>
         <tbody style="width: 100%; height: 200px; font-size: 20px;">
            <td colspan="2"><img alt=""
               src="resources/image/${fboard.fb_file }"> <br>
               ${fboard.fb_content }</td>
         </tbody>
         <form action="FboardCommentJoin">
         <thead style="font-size: 20px;">
            <tr>
            <th colspan="2">댓글달기</th>
            </tr>
            <tr>
            <th style="width:20%">작성자</th> 
            <td><input type="text" name="writer" style="font-size:19px;" value="${loginMember.name }" readonly></td>
            </tr>
         </thead>
         <tbody style="width: 100%; height: 100px;">
            <td colspan="2"><textarea style="width:100%; height: 100px; font-size:20px;" rows="6" name="comment"></textarea></td>
         </tbody>
         
      </table>
   <div style="text-align: right; padding: 8px;">
        <input type="submit" value="댓글입력" class="special" />
    </div>
    </form>
         </div>

   <%
      if (loginMember != null) {
         int index = 0;
      %>
      <div class="sunken-panel" style="height: 100px; width: 100%; overflow-y: scroll;">
      <table class="interactive" style="height: 100%; width: 100%;">
         <thead style="font-size: 20px;">
         <tr>
            <th colspan="2" style="width:20%">댓글란</th>
         </tr>
         <tr>
            <th style="width:20%">작성자</th>
            <th>내용</th>
         </tr>
         </thead>
         <tbody style="font-size: 20px;">
         <%for(FboardComment fbc : fbc_list) { index++;%>
         <tr>
            <td><%=fbc.getUser_id() %></td>
            <td><%=fbc.getCmt_content() %></td>
         </tr>
         <%} %>
         </tbody>
      </table>
      </div>
      <%} %>
   </div>
   <div style="text-align: right; padding: 10px;">
            <c:if test="${loginMember.name eq fboard.user_id}">
                    <button onclick="location.href='goFboardUpdate?fb_idx=${fboard.fb_idx}'" >업데이트</button>
               </c:if>
               <c:if test="${loginMember.name eq fboard.user_id}">
                    <button onclick="location.href='FboardDelete?fb_idx=${fboard.fb_idx}'">삭제</button>
               </c:if>
      <button onclick="location.href='goDataBoard'">뒤로가기</button>
   </div>

   <script src="resources/assets/js/jquery.min.js"></script>
         <script src="resources/assets/js/jquery.scrolly.min.js"></script>
         <script src="resources/assets/js/jquery.scrollex.min.js"></script>
         <script src="resources/assets/js/skel.min.js"></script>
         <script src="resources/assets/js/util.js"></script>
         <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
         <script src="resources/assets/js/main.js"></script>
</body>
</html>