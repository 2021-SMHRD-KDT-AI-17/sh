<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div>
            <table >
               <tr>
                  <td>제목</td>
                  <td>${announcement.ann_title }</td>
               </tr>
               <tr>
                  <td>작성자</td>
                  <td>${announcement.teacher_id }</td>
               </tr>   
               
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     ${announcement.ann_content }
                  </td>
               </tr>
            </table>
             <table>
               <tr>
                  <td colspan="2"><a href="goAnnouncement"><button>뒤로가기</button></a></td>
               </tr>
            </table>
        </div>
</body>
</html>