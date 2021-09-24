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
	<link href="css/boardWrite/boardDetail.css" type="text/css" rel="stylesheet"  >
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰기</title>
</head>
<style>
* {margin : 0;padding : 0;}
a {text-decoration: none;color : inherit;}
ul, li {list-style: none;}
footer {
    padding : 30px 0px;
    background-color: rgb(4, 6, 24);
    color : white;
    text-align: center;
}
</style>


<body>
	<header>
		<%@ include file = "/include/header.jsp" %>
	</header>
	<section>
	    <div class="board_wrap">
	        <div class="board_title">
	        <strong>글쓰기</strong>
	        <p>작성한 글이 커뮤니티의 게시글물로 게시됩니다.</p>
	        </div>
	        
	        <form id="frm">
	        <div class="board_write_wrap">
	            <div class="board_detail">
	                <div class="title">
	                    <dl>
	                        <dt>제목</dt>
	                        <dd>${boardVO.title }</dd>
	                    </dl>
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>글쓴이</dt>
	                        <dd>${boardVO.name }</dd>
	                    </dl>
	                    <dl>
	                        <dt>날짜</dt>
	                        <dd>${boardVO.rdate }</dd>
	                    </dl>
	                </div>
	                <div class="cont">${boardVO.content }</div>
	            </div>
	            <div class="bt_wrap">
	                <a href="boardModify.do?unq=${boardVO.unq }">수정</a>
	                <a href="boardList.do" class="on">목록</a>
	                <a href="#" class="del_bt">삭제</a>
	            </div>
	        </div>
	        </form>
	    </div>
	</section>
</body>
</html>