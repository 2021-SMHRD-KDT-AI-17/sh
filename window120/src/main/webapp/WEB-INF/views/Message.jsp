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
			<td>보낸사람</td>
			<td>제목</td>
			<td>보낸시간</td>
		</tr>
		
		<c:forEach items="${mes_list }" var="list" varStatus="s">
            <tr>
               <td>${list.user_id }</td>
               <td><a href="goMessageDetail?message_idx=${list.message_idx }">${list.message_title }</a></td>
               <td>${list.message_dt }</td>
            </tr>
        </c:forEach>
	</table>
</body>
</html>