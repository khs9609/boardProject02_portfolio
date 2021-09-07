<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<style>
.wrap {
	width : 1600px;
	margin : auto;
}
header{
	background : beige;
	height : 100px;
}
/* 헤더  부분 */
header .header {
	padding : 20px;
	display : flex;
	justify-content: space-between;
}

header .header .header_logo {
	font-size : 24px;
	font-weight: bold;
}
header .header .header_login ul {
	display : flex;
}
header .header .header_login ul li {
	list-style: none;
	margin-left : 12px;
}
header .header .header_login ul li a{
	text-decoration: none;
	color : black;
}
/* 탑메뉴 부분 */


section {
	text-align : center;
	height : 500px;
}

footer {
	height : 200px;
	background-color : #f0f0f0;
}

</style>
<body>

<div class="wrap">

<header>

	<div class="header">
		<div class="header_logo">
			Hs Company
		</div>
		<div class="header_login">
			<ul>
				<li><a href="#">로그인</a></li>
				<li><a href="#">로그아웃</a></li>
			</ul>
		</div>
	</div>
	
	
	<div class="topMenu">
		<ul class="topMenu_menu">
			<li><a href="#">회사소개</a></li>
			<li><a href="#">자유게시판</a></li>
			<li><a href="#">공지사항</a></li>
		</ul>
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

</body>
</html>