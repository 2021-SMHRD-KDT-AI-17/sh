<%@page import="kr.smhrd.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <% Member loginMember = (Member)session.getAttribute("loginMember");  %>
   <form action = "announcementInsert" method="post">
      <table>
      <th>공지사항</th>
      <tr>
         <td>제목</td> <td><input type="text" name = "title"></td>
      </tr>
      <tr>
         <td>작성자</td> <td><input readonly type="text" name="writer" value="<%=loginMember.getId() %>"></td>
      </tr>
      <tr>
         <td>내용</td> <td><input type="text" name = "content"></td>
      </tr>
      <tr>
         <td colspan="2"><input type="submit" value="작성"></td>
      </tr>
         
      
   </table>
   </form>

</body>
</html>