<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

	<link href="css/boardHeader/header.css" type="text/css" rel="stylesheet"  >
	<link href="css/Member/loginWrite.css" type="text/css" rel="stylesheet"  >
	
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
		
		if($("#userid").val() == ""){
			alert("아이디를 입력해주세요");
			$("#userid").focus();
			return false;
		}
		$("#userid").val($.trim($("#userid").val()) ); // 공백제거
		
		if($("#pass").val() == ""){
			alert("비밀번호를 입력해주세요");
			$("#pass").focus();
			return false;
		}
		$("#pass").val($.trim($("#pass").val()) ); // 공백제거

		
		var userid = $("#userid").val();
		var pass = $("#pass").val();
		//ajax로 정보 넘어가게 만들기(비동기전송방식)
		var sendData = "userid="+userid+"&pass="+pass;
		
		$.ajax({
			type : "POST",
			data : sendData,
			url : "loginSub.do",
			dataType : "text",
			success : function(result){
				if(result == "1"){
					alert("로그인되었습니다!");
					location = "boardList.do";
				}else if(result == "-1"){
					alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
				}else{
					alert("로그인 실패 \n 관리자에게 문의주세요.");
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
	        <strong>로그인</strong>
	        <p>아이디와 비밀번호를 입력하여 로그인해주세요.</p>
	        </div>
	        	
	        <div class="board_write_wrap">
	            <div class="board_detail">
	                <div class="login">
	                    <dl>
	                        <!-- <dt>아이디</dt> -->
	                        <dd><input type="text" id="userid" name="userid" placeholder="아이디를 입력해주세요"></dd>
	                    </dl>
	                    <dl>
	                        <!-- <dt>비밀번호</dt> -->
	                        <dd><input type="password" id="pass" name="pass" placeholder="비밀번호를 입력해주세요"></dd>
	                    </dl>
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <a href="#" class="login_bt" onclick="fn_submit();return false;">로그인</a>
	                <a href="memberWrite.do" class="member_bt">회원가입</a>
	            </div>
	        </div>
	        
	    </div>
	</section>
</body>
</html>