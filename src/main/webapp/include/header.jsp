<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 	<link href="css/boardHeader/header.css" type="text/css" rel="stylesheet"  > -->

<meta charset="UTF-8">
<title>header</title>
</head>
<body>
<%
String USERID = (String) session.getAttribute("SessionUserId");
%>

    <div>
	    <h1 class="logo">
	         <!-- <a href="main.do"><img src="store.png" alt="로고"></a> -->
	         <a href="main.do">HS Company</a>
	    </h1>
	    <ul class="menu">
	        <li><a href="#">회사소개</a></li>
	        <li><a href="/hs_boardProject/boardList.do">커뮤니티</a></li>
	        <%
	        if(USERID == null){
	        %>
	        <li><a href="loginWrite.do">로그인</a></li>
	        <%
	        }else{
	        %>
	        <li><a href="#">회원정보 수정</a></li>
	        <li><a href="/hs_boardProject/logout.do">로그아웃</a></li>
	        <%
	        }
	        %>
	        
	    </ul>
	</div>
</body>
</html>