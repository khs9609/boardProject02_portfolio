<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

	<link href="css/boardHeader/header.css" type="text/css" rel="stylesheet"  >
	<link href="css/boardWrite/boardWrite.css" type="text/css" rel="stylesheet"  >
	
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

<script>
	function fn_submit() {
		
		if($.trim($("#title").val()) == ""){
			alert("제목을 입력해주세요");
			$("#title").focus();
			return false;
		}
		$("#title").val($.trim($("#title").val()) ); // 공백제거
		
		if($("#name").val() == ""){
			alert("이름을 입력해주세요");
			$("#name").focus();
			return false;
		}
		
		if($("#pass").val() == ""){
			alert("비밀번호를 입력해주세요");
			$("#pass").focus();
			return false;
		}
		$("#pass").val($.trim($("#pass").val()) ); // 공백제거
		
		if($("#content").val() == ""){
			alert("내용을 입력해주세요");
			$("#content").focus();
			return false;
		}
		
		//ajax로 정보 넘어가게 만들기(비동기전송방식)
		var formData = $("#frm").serialize();
		
		$.ajax({
			type : "POST",
			data : formData,
			url : "boardWriteSave.do",
			dataType : "text",
			success : function(data){
				if(data == "ok"){
					alert("저장 완료");
					location = "boardList.do";
				}else{
					alert("저장실패 \n 관리자에게 문의주세요.");
				}
			},
			error : function(){
				alert("오류 발생 !");
			}
			
			
		});
		
	}
</script>

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
	            <div class="board_write">
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
	                        <dt>비밀번호</dt>
	                        <dd><input type="password" name="pass" id="pass" placeholder="비밀번호 입력"></dd>
	                    </dl>
	                </div>
	                <div class="cont">
	                    <textarea placeholder="내용 입력" name="content" id="content" value="${boardVO.content }"></textarea>
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <a href="#" class="on" onclick="fn_submit();return false;">저장</a>
	                <a href="#">목록</a>
	            </div>
	        </div>
	        </form>
	    </div>
	</section>
</body>
</html>