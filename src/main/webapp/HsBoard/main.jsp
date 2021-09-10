<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<link href="css/boardHeader/header.css" type="text/css" rel="stylesheet"  >
	<link href="css/boardHeader/section.css" type="text/css" rel="stylesheet"  >
    <meta charset="UTF-8">
    <title>HS Company입니다</title>
</head>
<style>
* {margin : 0;padding : 0;}
a {text-decoration: none;color : inherit;}
ul, li {list-style: none;}
footer {
    padding : 30px 0px;
    background-color: #000;
    color : white;
    text-align: center;
}
</style>
<body>
    <div id="wrap">
        <header>
			<%@ include file = "/include/header.jsp" %>
        </header>
        
        <section>
            <div class="board_wrap">
                <div class="board_title">
                <strong>공지사항</strong>
                <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
                </div>
                <div class="board_list_wrap">
                    <div class="board_list">
                        <div class="top">
                            <div class="num">번호</div>
                            <div class="title">제목</div>
                            <div class="writer">글쓴이</div>
                            <div class="date">작성일</div>
                            <div class="count">조회수</div>
                        </div>
                        <div>
                            <div class="num">5</div>
                            <div class="title"><a href="#"> 글 제목이 들어갑니다</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">4</div>
                            <div class="title"><a href="#"> 글 제목이 들어갑니다</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">3</div>
                            <div class="title"><a href="#"> 글 제목이 들어갑니다</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">2</div>
                            <div class="title"><a href="#"> 글 제목이 들어갑니다</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">1</div>
                            <div class="title"><a href="#"> 글 제목이 들어갑니다</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                    </div>
                    <div class="board_page">
                            <a href="#" class="bt first"><<</a>
                            <a href="#" class="bt prev"><</a>
                                <a href="#" class="num on">1</a>
                                <a href="#" class="num">2</a>
                                <a href="#" class="num">3</a>
                                <a href="#" class="num">4</a>
                                <a href="#" class="num">5</a>
                            <a href="#" class="bt next">></a>
                            <a href="#" class="bt last">>></a>
                    </div>
                    <div class="bt_wrap">
                        <a href="#" class="on">목록</a>
                        <a href="boardWrite.do">작성</a>
                    </div>
                </div>
            </div>
        </section>
        
        <footer>
            (c)김효섭 2021
        </footer>

<<<<<<< HEAD
    </div>
=======
<div class="wrap">

<header>
<!-- 탑메뉴 영역  -->
	<div class="topMenu">
		<ul class="topMenu_login">
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
		</ul>
	</div>

<!-- 헤더 영역  -->
	<div class="header">
		<div class="header_logo">
			<h1>H Company</h1>
		</div>
		<div class="header_menu">
			<ul>
				<li><a href="#">회사소개</a></li>
				<li><a href="#">커뮤니티</a></li>
				<li><a href="#">공지사항</a></li>
			</ul>
		</div>
		<div class="none">
			facebook		
		</div>
	</div>
	
	
</header>
	
<section>
	테스트 메세지입니다. <br>
	올바르게 출력이 되는지 확인해주세요.
</section>
	
<footer>
	(c)김효섭 2021 <br>
	울산광역시 남구 무거동 (052-999-9999)
</footer>
	
</div>

>>>>>>> branch 'master' of https://github.com/khs9609/hs_boardProject.git
</body>
</html>
