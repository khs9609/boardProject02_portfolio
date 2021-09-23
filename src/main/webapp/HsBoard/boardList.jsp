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
	<link href="css/boardHeader/Section.css" type="text/css" rel="stylesheet"  >
    <meta charset="UTF-8">
    <title>HS Company입니다.</title>
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
                <strong>커뮤니티</strong>
                <p>현재 커뮤니티 ${total} 개의 글이 작성되어 있습니다.</p>
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
                        
 					<c:set var="cnt" value="${rowNum }"/>
 					
					<c:forEach var="list" items="${resultList }">
                        <div>
                            <div class="num" name="unq">${cnt}</div>
                            <div class="title"><a href="boardDetail.do?unq=${list.unq }"> ${list.title }</a></div>
                            <div class="writer">${list.name }</div>
                            <div class="date">${list.rdate }</div>
                            <div class="count">${list.hits }</div>
                        </div>
					<c:set var="cnt" value="${cnt-1 }"/>
					
					</c:forEach>
					
                    </div>
                    <div class="board_page">
                            <a href="#" class="bt first"><<</a>
                            <a href="#" class="bt prev"><</a>
						<c:forEach var="i" begin="1" end="${totalPage }">
							<a href="boardList.do?viewPage=${i}" class="num">${i } </a>
						</c:forEach>
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
	</div>
</body>
</html>
