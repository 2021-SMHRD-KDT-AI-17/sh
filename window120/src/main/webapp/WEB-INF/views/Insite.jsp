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
			<td>번호</td>
			<td>원 제목</td>
			<td>번역 제목</td>
			<td>링크</td>
		</tr>
		<c:forEach items="${insite_list }" var="i_list" varStatus="s">
           <tr>
              <td>${s.count }</td>
              <td>${i_list.sentence }</td>
              <td>${i_list.translate }</td>
              <td><a target="_blank" href="https://${i_list.link}/">뉴스사이트 이동</a></td>
           </tr>
         </c:forEach>
	</table>
	

</body>
</html>