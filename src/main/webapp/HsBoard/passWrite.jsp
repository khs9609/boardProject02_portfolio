<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

	<link href="css/boardHeader/header.css" type="text/css" rel="stylesheet"  >
	<link href="css/boardWrite/passWrite.css" type="text/css" rel="stylesheet"  >
	
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
		
		if($("#pass").val() == ""){
			alert("비밀번호를 입력해주세요");
			$("#pass").focus();
			return false;
		}
		$("#pass").val($.trim($("#pass").val()) ); // 공백제거
		var pass = $("#pass").val();
		
		//ajax로 정보 넘어가게 만들기(비동기전송방식)
		var sendData = "unq=${unq}&pass="+pass;
		
		$.ajax({
			type : "POST",
			data : sendData,
			url : "boardDelete.do",
			dataType : "text",
			success : function(result){
				if(result == "1"){
					alert("삭제 완료");
					location = "boardList.do";
				}else if(result == "-1"){
					alert("패스워드가 일치하지 않습니다.");
				}else{
					alert("삭제실패 \n 관리자에게 문의주세요.");
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
	        <strong>삭제하기</strong>
	        <p>게시물 등록에 사용된 암호와 일치하게 입력되면 삭제처리가 됩니다.</p>
	        </div>
	        	
	        <div class="board_write_wrap">
	            <div class="board_detail">
	                <div class="pass">
	                    <dl>
	                        <dt>패스워드</dt>
	                        <dd><input type="password" id="pass" name="pass" placeholder="패스워드를 입력해주세요"></dd>
	                    </dl>
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <a href="#" class="del_bt" onclick="fn_submit();return false;">삭제</a>
	                <a href="boardList.do">목록</a>
	            </div>
	        </div>
	        
	    </div>
	</section>
</body>
</html>