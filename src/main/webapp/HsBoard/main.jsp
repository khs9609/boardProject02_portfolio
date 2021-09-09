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
	
}
/* 탑메뉴 영역 */
header .topMenu {
	padding : 10px;
	background-color: #6ab04c;
}
header .topMenu .topMenu_login {
	margin : 0;
	margin-left : 1380px;
	display : flex;
	
}
header .topMenu .topMenu_login li {
	list-style : none;
	margin-left : 12px;
}
header .topMenu .topMenu_login li a {
	text-decoration: none;
	color : black;
}

/* 헤더  영역 */
header .header {
	padding : 20px;
	display : flex;
	justify-content: space-between;
	background : beige;
	height : 100px;
}

header .header .header_logo {
	font-weight: bold;
}
header .header .header_menu ul {
	display : flex;
}
header .header .header_menu ul li {
	list-style: none;
	font-size : 20px;
	padding : 0px 10px;
}
header .header .header_menu ul li a{
	text-decoration: none;
	color : black;
}


section {
	margin-top : 100px;
	text-align : center;
	height : 500px;
}

footer {
	background-color : #2f3640;
	padding : 50px;
	color : white;
	text-align : center;
}

</style>
<body>

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

</body>
</html>
