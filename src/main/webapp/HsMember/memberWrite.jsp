<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

	<link href="css/boardHeader/header.css" type="text/css" rel="stylesheet"  >
	<link href="css/Member/memberWrite.css" type="text/css" rel="stylesheet"  >
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	
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

	$( function() {
	    $( "#birth" ).datepicker({
	      changeMonth: true,
	      changeYear: true
	    });
	  });

	function fn_submit() {
		
		if($.trim($("#title").val()) == ""){
			alert("제목을 입력해주세요");
			$("#title").focus();
			return false;
		}
		$("#title").val($.trim($("#title").val()) ); // 공백제거
		
		if($("#pass").val() == ""){
			alert("비밀번호를 입력해주세요");
			$("#pass").focus();
			return false;
		}
		$("#pass").val($.trim($("#pass").val()) ); // 공백제거
		
		if($("#name").val() == ""){
			alert("이름을 입력해주세요");
			$("#name").focus();
			return false;
		}
		if($("#phone").val() == ""){
			alert("연락처를 입력해주세요");
			$("#phone").focus();
			return false;
		}
		
		//ajax로 정보 넘어가게 만들기(비동기전송방식)
		var formData = $("#frm").serialize();
		
		$.ajax({
			type : "POST",
			data : formData,
			url : "memberWriteSave.do",
			dataType : "text",
			success : function(data){
				if(data == "ok"){
					alert("성공적으로 가입되었습니다.");
					location = "boardList.do";
				}else{
					alert("가입실패 \n 관리자에게 문의주세요.");
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
	        <strong>회원가입</strong>
	        <p>로그인을 위한 정보를 입력하여 회원가입을 완료해주세요.</p>
	        </div>
	        
	        <form id="frm" name="frm">
	        <div class="board_write_wrap">
	        	
	            <div class="member_write">
	                <div class="main">
	                    <dl>
	                        <dt>아이디</dt>
	                        <dd><input type="text" name="userid" id="userid" placeholder="아이디"></dd>
	                    </dl>
	                    <dl>
	                        <dt>비밀번호</dt>
	                        <dd><input type="password" name="pass" id="pass" placeholder="비밀번호"></dd>
	                    </dl>
	                    <dl>
	                        <dt style="letter-spacing: -4px;">비밀번호 확인</dt>
	                        <dd><input type="password" name="pass_chk" id="pass_chk" placeholder="비밀번호 확인"></dd>
	                    </dl>
	                    
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>이름</dt>
	                        <dd><input type="text" name="pass_chk" id="pass_chk" placeholder="이름"></dd>
	                    </dl>
	                    <dl>
	                        <dt>성별</dt>
	                        <dd>
								남 <input type="radio" name="gender" id="gender" value="M">
								여 <input type="radio" name="gender"  id="gender" value="F">
	                        </dd>
	                    </dl>
	                    <dl>
	                        <dt>생년월일</dt>
	                        <dd><input type="text" name="birth" id="birth" placeholder="생년월일"></dd>
	                    </dl>
	                    <dl>
	                        <dt>연락처</dt>
	                        <dd><input type="text" name="phone" id="phone" placeholder="예) 010-0000-0000"></dd>
	                    </dl>
						<dl>
	                        <dt>주소</dt>
	                        <dd>
	                        	<input type="text" name="addr" id="addr">
	                        	<button type="button" class="addr_bt">우편번호 검색</button>
	                        	<br>
	                        	<input type="text" name="zipcode" id="zipcode" class="zipcode">
	                        </dd>
	                    </dl>
	                </div>
	            </div>
	            
	            <div class="bt_wrap">
	                <a href="" class="on" onclick="fn_submit();return false;">가입</a>
	                <a href="memberWrite.do" >취소</a>
	            </div>
	        </div>
	        </form>
	    </div>
	</section>
</body>
</html>