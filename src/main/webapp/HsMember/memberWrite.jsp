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
	      changeYear: true,
	      dayNamesMin : ['일','월','화','수','목','금','토'],
	      monthNamesShort : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	      dateFormat : 'yy-mm-dd'
	    });
	    
	    $("#zipcode_bt").click(function(){
	    	var w = 500;
	    	var h = 200;
	    	var url = "post1.do";
	    	
	    	window.open(url, "zipcode","width="+w+",height="+h);
	    });
	    
	  });

	function fn_submit() {
		
		var userid = $("#userid").val();
		var pass = $("#pass").val();
		var pass_chk = $("#pass_chk").val();
		var name = $("#name").val();
		var phone = $("#phone").val();
		
		userid = $.trim(userid);
		pass = $.trim(pass);
		name = $.trim(name);
		phone = $.trim(phone);
		
		if(userid == ""){
			alert("아이디를 입력해주세요");
			$("userid").focus();
			return false;
		}
		if(pass == ""){
			alert("비밀번호를 입력해주세요");
			$("pass").focus();
			return false;
		}
		if(name == ""){
			alert("이름을 입력해주세요");
			$("name").focus();
			return false;
		}
		if(phone == ""){
			alert("연락처를 입력해주세요");
			$("phone").focus();
			return false;
		}
		
		//체크박스 유무
		if(!$(":input:radio[name=gender]:checked").val()) {
			alert("성별을 선택해주세요");
			return false;
		}
		
		if(pass != pass_chk){
			alert("비밀번호가 일치한지 다시 확인해주세요.");
			return false;
		}
		if(zipcode == ""){
			alert("우편번호를 검색해주세요.");
			return false;
		}
		
		/*아이디 중복체크 기능 추가*/
		
		/* -------------- */
		
		
		$("#userid").val(userid);
		$("#pass").val(pass);
		$("#name").val(name);
		$("#phone").val(phone);
		
		var formData = $("#frm").serialize();
		
		$.ajax({
			type : "POST",
			data : formData,
			url : "memberWriteSave.do",
			dataType : "text",
			success : function(result){
				if(result == "ok"){
					alert("가입완료");
					location="loginWrite.do";
				}else{
					alert("가입 실패. \n 다시 한 번 확인해주세요.");
				}
			},
			error : function() {
				alert("오류가 발생했습니다. \n다시 시도하거나, 관리자에게 문의주세요.");
			}
		});
		
		
	};
	
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
	                        <dd>
	                        <input type="text" name="userid" id="userid" placeholder="아이디">
	                        <button type="button" class="btn1">아이디 중복체크</button>
	                        </dd>
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
	                        <dd><input type="text" name="name" id="name" placeholder="이름"></dd>
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
	                        	<input type="text" name="zipcode" id="zipcode" readonly>
	                        	<button type="button" class="btn1" id="zipcode_bt">우편번호 검색</button>
	                        	<br>
	                        	<input type="text" name="address" id="address" class="address" readonly>
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