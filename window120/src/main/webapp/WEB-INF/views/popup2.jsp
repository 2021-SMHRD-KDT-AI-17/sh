<%@page import="kr.smhrd.entity.Message"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#div1 {
	border: 2px solid black;
	display: inline-block;
}

#box {
	border: 1px
}

#qr {
	height: 600px;
	padding-left: 22px;
	vertical-align: middle;
	align-content: center;
}

#qrtext {
	font-size: 90px;
	margin-top: 0;
	text-align: center;
	margin-bottom: 0;
}

#morningBtn {
	padding: 10px 20px;
	background-color: #008bfd;
	color: #fff;
	border: none;
	cursor: pointer;
	font-size: 16px;
	border-radius: 5px;
}

#closeBtn:active {
	background-color: #b300b3;
}

#popim {
	text-align: center;
}
</style>
<body>
	<% Member loginMember = (Member) session.getAttribute("loginMember"); %>

	<div style="text-align: center;">
		<div id="div1">
			<div id="popim">
				<img src='https://ifh.cc/g/wSBf2l.jpg' id="qr">
			</div>
			<h1 id="qrtext">아 맞다 큐알!</h1>

			<form action="poppop" method="post">
				<button type="submit" id="eveningBtn" name="data">저녁</button>
			</form>
		</div>
	</div>
<script>
	//저녁 버튼 클릭 이벤트 처리
	document.getElementById("eveningBtn").addEventListener("click", function() {
    // 저녁 버튼 클릭 시 수행할 작업
    var email = '<%=loginMember.getEmail()%>';
    var eveningCookieName = email + 'admin_attendance_check2';
    var eveningCookieValue = "eveningValue";
    var eveningExpiration = new Date();

    // 다음 날로 이동 + 새벽 5시 만료날짜
    eveningExpiration.setDate(eveningExpiration.getDate() + 1);
    eveningExpiration.setHours(5, 0, 0, 0);
    var eveningExpirationString = eveningExpiration.toUTCString();
    document.cookie = eveningCookieName + "=" + encodeURIComponent(eveningCookieValue) + "; expires=" + eveningExpirationString + "; path=/";
    
    self.close();
});
</script>

</body>
</html>